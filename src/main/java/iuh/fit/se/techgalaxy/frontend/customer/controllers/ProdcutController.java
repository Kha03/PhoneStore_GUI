package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.*;
import iuh.fit.se.techgalaxy.frontend.customer.entities.Color;
import iuh.fit.se.techgalaxy.frontend.customer.entities.Memory;
import iuh.fit.se.techgalaxy.frontend.customer.entities.Trademark;
import iuh.fit.se.techgalaxy.frontend.customer.service.*;
import iuh.fit.se.techgalaxy.frontend.customer.service.impl.CartService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.PagedModel;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Controller
@RequestMapping({"/products"})
@Slf4j
public class ProdcutController {
    ProductService productService;
    TrademarkService trademarkService;
    AttributeValueService attributeValueService;
    MemoriesService memoriesService;
    UsageCategoryService usageCategoryService;
    ColorService colorService;
    CartService cartService;
    ProductFeedBackService productFeedBackService;
    @GetMapping()
    public ModelAndView getFilteredProducts(
            @RequestParam(required = false) List<String> trademark,
            @RequestParam(required = false) Double minPrice,
            @RequestParam(required = false) Double maxPrice,
            @RequestParam(required = false) List<String> memory,
            @RequestParam(required = false) List<String> usageCategoryId,
            @RequestParam(required = false) List<String> values,
            @RequestParam(required = false) String sort,
            @RequestParam(defaultValue = "0") Integer page,
            @RequestParam(defaultValue = "2") Integer size,
            ModelAndView model
    ) {
        PagedModel<EntityModel<ProductPageResponse>> response = productService.getFilteredProductDetails(trademark, minPrice, maxPrice, memory, usageCategoryId, values, sort, page, size);
        ApiResponse<List<Trademark>> trademarkAll = trademarkService.getTrademarkAll();
        ApiResponse<List<ValueResponse>> valueByDriveSize = attributeValueService.getValueByDriveSize();
        ApiResponse<List<ValueResponse>> valueScanFre = attributeValueService.getValueByScanFre();
        ApiResponse<List<Memory>> memories = memoriesService.getAllMemories();
        ApiResponse<List<UsageCategoryResponse>> usageCategories = usageCategoryService.getAllUsageCategories();
        model.addObject("usageCategories", usageCategories.getData());
        model.addObject("memories", memories.getData());
        model.addObject("scanFres", valueScanFre.getData());
        model.addObject("driveSizes", valueByDriveSize.getData());
        model.addObject("trademarks", trademarkAll.getData());
        model.addObject("products", response.getContent());

        model.addObject("selectedTrademarks", trademark);
        model.addObject("selectedMinPrice", minPrice);
        model.addObject("selectedMaxPrice", maxPrice);
        model.addObject("selectedMemories", memory);
        model.addObject("selectedusageCategory", usageCategoryId);
        model.addObject("selectedValues", values);
        model.addObject("selectedsort", sort);
        model.addObject("totalPages", response.getMetadata().getTotalPages());
        model.addObject("page", page);
        model.setViewName("listproduct");
        return model;
    }

    @PostMapping("/addToCart")
    public ResponseEntity<String> addToCart(@RequestParam String productVariantId,
                                            @RequestParam(required = false) String memoryId,
                                            @RequestParam(required = false) String colorId,
                                            HttpServletRequest request) {
        HttpSession session = request.getSession();
        cartService.addToCart(productVariantId, memoryId, colorId, session);
        log.info("Added product variant with ID {} to the cart", productVariantId);
        return ResponseEntity.ok("Cart updated successfully");
    }
    @PostMapping("/removeFromCart")
    public ResponseEntity<String> removeFromCart(@RequestParam String productId, HttpServletRequest request){
        HttpSession session = request.getSession();
        cartService.removeFromCart(productId, session);
        log.info("Removed product variant with ID {} from the cart", productId);
        return ResponseEntity.ok("Cart updated successfully");
    }
    @GetMapping("/detail/{productId}")
    public ModelAndView getProductDetail(@PathVariable String productId, ModelAndView model) {
        ObjectMapper objectMapper = new ObjectMapper();
        ApiResponse<Set<ProductVariantDetailResponse>> response = productService.getProductVariantDetail(productId);
        ProductVariantDetailResponse product = response.getData().stream().findFirst().orElse(null);
        ApiResponse<List<ValueResponse>> valueByVariantId = attributeValueService.getValueByVariantId(productId);
        ApiResponse<List<ProductFeedbackResponseV2>> feedbacks = productFeedBackService.getFeedBacks(productId);
        if (product != null) {
            // Gọi API để lấy tên cho memories và colors
            Map<String, String> memoryNames = getMemoryNames(product.getMemories().keySet());
            Map<String, String> colorNames = getColorNames(product.getMemories());

            // Xử lý dữ liệu: chuyển đổi id -> name
            Map<String, List<ColorQuantity>> updatedMemories = new LinkedHashMap<>();
            product.getMemories().forEach((memoryId, colorQuantities) -> {
                String memoryName = memoryNames.getOrDefault(memoryId, memoryId);
                colorQuantities.forEach(color -> {
                    String colorName = colorNames.getOrDefault(color.getColorId(), color.getColorId());
                    color.setColorId(colorName);
                });
                updatedMemories.put(memoryName, colorQuantities);
            });

            product.setMemories(updatedMemories);
            model.addObject("memoryNames", memoryNames);
            try {
                String memoriesJson = objectMapper.writeValueAsString(product.getMemories());
                String colorNamesJson = objectMapper.writeValueAsString(colorNames);
                model.addObject("memoriesJson", memoriesJson);
                model.addObject("colorNamesJson", colorNamesJson);
            } catch (Exception e) {
                model.addObject("memoriesJson", "{}");
            }
        }

        model.addObject("variantId", productId);
        model.addObject("values", valueByVariantId.getData());
        model.addObject("product", product);
        model.addObject("feedbacks", feedbacks.getData());
        model.setViewName("productdetail");
        return model;
    }

    private Map<String, String> getMemoryNames(Set<String> memoryIds) {
        return memoriesService.getMemoriesById(memoryIds).getData().stream()
                .collect(Collectors.toMap(Memory::getId, Memory::getName));
    }

    private Map<String, String> getColorNames(Map<String, List<ColorQuantity>> memories) {
        Set<String> colorIds = memories.values().stream()
                .flatMap(List::stream)
                .map(ColorQuantity::getColorId)
                .collect(Collectors.toSet());
        return colorService.getColorsById(colorIds).getData().stream()
                .collect(Collectors.toMap(Color::getId, Color::getName));
    }

}
