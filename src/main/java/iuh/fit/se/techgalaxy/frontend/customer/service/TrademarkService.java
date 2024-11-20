package iuh.fit.se.techgalaxy.frontend.customer.service;

import iuh.fit.se.techgalaxy.frontend.customer.entities.Trademark;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;

import java.util.List;

public interface TrademarkService {
    ApiResponse<List<Trademark>> getTrademarkAll();
}
