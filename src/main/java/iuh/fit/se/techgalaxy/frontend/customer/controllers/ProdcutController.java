package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductPageResponse;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.UsageCategoryResponse;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ValueResponse;
import iuh.fit.se.techgalaxy.frontend.customer.entities.Memory;
import iuh.fit.se.techgalaxy.frontend.customer.entities.Trademark;
import iuh.fit.se.techgalaxy.frontend.customer.service.*;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.PagedModel;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

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
            @RequestParam(defaultValue = "10") Integer size,
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
        model.addObject("page", page);
        model.setViewName("listproduct");
        return model;
    }

    @PostMapping("/addToCart")
    public ResponseEntity<String> addToCart(@RequestParam String productVariantId) {
        log.info("Adding product variant with ID {} to the cart", productVariantId);
        // Process the cart logic here
        return ResponseEntity.ok("Cart updated successfully");
    }
}
