# frozen_string_literal: true

module SdkRubyApisEfi
  # Endpoints signatures
  module Constants
    module APIs
      CHARGES = {
        URL: {
          production: "https://cobrancas.api.efipay.com.br",
          sandbox: "https://cobrancas-h.api.efipay.com.br"
        },
        ENDPOINTS: {
          authorize: {
            route: "/v1/authorize",
            method: "post"
          },
          createCharge: {
            route: "/v1/charge",
            method: "post"
          },
          createOneStepCharge: {
            route: "/v1/charge/one-step",
            method: "post"
          },
          createOneStepChargePartner: {
            route: "/v1/partner/charge/one-step",
            method: "post"
          },
          detailCharge: {
            route: "/v1/charge/:id",
            method: "get"
          },
          updateChargeMetadata: {
            route: "/v1/charge/:id/metadata",
            method: "put"
          },
          updateBillet: {
            route: "/v1/charge/:id/billet",
            method: "put"
          },
          definePayMethod: {
            route: "/v1/charge/:id/pay",
            method: "post"
          },
          definePayMethodPartner: {
            route: "/v1/partner/charge/:id/pay",
            method: "post"
          },
          cancelCharge: {
            route: "/v1/charge/:id/cancel",
            method: "put"
          },
          createCarnet: {
            route: "/v1/carnet",
            method: "post"
          },
          detailCarnet: {
            route: "/v1/carnet/:id",
            method: "get"
          },
          updateCarnetParcel: {
            route: "/v1/carnet/:id/parcel/:parcel",
            method: "put"
          },
          updateCarnetMetadata: {
            route: "/v1/carnet/:id/metadata",
            method: "put"
          },
          getNotification: {
            route: "/v1/notification/:token",
            method: "get"
          },
          listPlans: {
            route: "/v1/plans",
            method: "get"
          },
          createPlan: {
            route: "/v1/plan",
            method: "post"
          },
          deletePlan: {
            route: "/v1/plan/:id",
            method: "delete"
          },
          createSubscription: {
            route: "/v1/plan/:id/subscription",
            method: "post"
          },
          createOneStepSubscription: {
            route: "/v1/plan/:id/subscription/one-step",
            method: "post"
          },
          createOneStepSubscriptionLink: {
            route: "/v1/plan/:id/subscription/one-step/link",
            method: "post"
          },
          detailSubscription: {
            route: "/v1/subscription/:id",
            method: "get"
          },
          defineSubscriptionPayMethod: {
            route: "/v1/subscription/:id/pay",
            method: "post"
          },
          cancelSubscription: {
            route: "/v1/subscription/:id/cancel",
            method: "put"
          },
          updateSubscriptionMetadata: {
            route: "/v1/subscription/:id/metadata",
            method: "put"
          },
          createSubscriptionHistory: {
            route: "/v1/subscription/:id/history",
            method: "post"
          },
          sendSubscriptionLinkEmail: {
            route: "/v1/charge/:id/subscription/resend",
            method: "post"
          },
          getInstallments: {
            route: "/v1/installments",
            method: "get"
          },
          sendBilletEmail: {
            route: "/v1/charge/:id/billet/resend",
            method: "post"
          },
          createChargeHistory: {
            route: "/v1/charge/:id/history",
            method: "post"
          },
          sendCarnetEmail: {
            route: "/v1/carnet/:id/resend",
            method: "post"
          },
          sendCarnetParcelEmail: {
            route: "/v1/carnet/:id/parcel/:parcel/resend",
            method: "post"
          },
          createCarnetHistory: {
            route: "/v1/carnet/:id/history",
            method: "post"
          },
          cancelCarnet: {
            route: "/v1/carnet/:id/cancel",
            method: "put"
          },
          cancelCarnetParcel: {
            route: "/v1/carnet/:id/parcel/:parcel/cancel",
            method: "put"
          },
          createOneStepLink: {
            route: "/v1/charge/one-step/link",
            method: "post"
          },
          defineLinkPayMethod: {
            route: "/v1/charge/:id/link",
            method: "post"
          },
          updateChargeLink: {
            route: "/v1/charge/:id/link",
            method: "put"
          },
          sendLinkEmail: {
            route: "/v1/charge/:id/link/resend",
            method: "post"
          },
          updatePlan: {
            route: "/v1/plan/:id",
            method: "put"
          },
          defineBalanceSheetBillet: {
            route: "/v1/charge/:id/balance-sheet",
            method: "post"
          },
          settleCharge: {
            route: "/v1/charge/:id/settle",
            method: "put"
          },
          settleCarnet: {
            route: "/v1/carnet/:id/settle",
            method: "put"
          },
          settleCarnetParcel: {
            route: "/v1/carnet/:id/parcel/:parcel/settle",
            method: "put"
          }
        }
      }.freeze

      PIX = {
        URL: {
          production: "https://pix.api.efipay.com.br",
          sandbox: "https://pix-h.api.efipay.com.br"
        },
        ENDPOINTS: {
          authorize: {
            route: "/oauth/token",
            method: "post"
          },
          pixConfigWebhook: {
            route: "/v2/webhook/:chave",
            method: "put"
          },
          pixDetailWebhook: {
            route: "/v2/webhook/:chave",
            method: "get"
          },
          pixListWebhook: {
            route: "/v2/webhook",
            method: "get"
          },
          pixDeleteWebhook: {
            route: "/v2/webhook/:chave",
            method: "delete"
          },
          pixCreateCharge: {
            route: "/v2/cob/:txid",
            method: "put"
          },
          pixCreateImmediateCharge: {
            route: "/v2/cob",
            method: "post"
          },
          pixDetailCharge: {
            route: "/v2/cob/:txid",
            method: "get"
          },
          pixUpdateCharge: {
            route: "/v2/cob/:txid",
            method: "patch"
          },
          pixListCharges: {
            route: "/v2/cob",
            method: "get"
          },
          pixDevolution: {
            route: "/v2/pix/:e2eId/devolucao/:id",
            method: "put"
          },
          pixDetailDevolution: {
            route: "/v2/pix/:e2eId/devolucao/:id",
            method: "get"
          },
          pixSend: {
            route: "/v2/gn/pix/:idEnvio",
            method: "put"
          },
          pixSendDetailId: {
            route: "/v2/gn/pix/enviados/id-envio/:idEnvio",
            method: "get"
          },
          pixSendDetail: {
            route: "/v2/gn/pix/enviados/:e2eId",
            method: "get"
          },
          pixSendList: {
            route: "/v2/gn/pix/enviados",
            method: "get"
          },
          pixDetailReceived: {
            route: "/v2/pix/:e2eId",
            method: "get"
          },
          pixReceivedList: {
            route: "/v2/pix",
            method: "get"
          },
          pixGenerateQrcode: {
            route: "/v2/loc/:id/qrcode",
            method: "get"
          },
          pixCreateLocation: {
            route: "/v2/loc",
            method: "post"
          },
          pixLocationList: {
            route: "/v2/loc",
            method: "get"
          },
          pixDetailLocation: {
            route: "/v2/loc/:id",
            method: "get"
          },
          pixUnlinkTxidLocation: {
            route: "/v2/loc/:id/txid",
            method: "delete"
          },
          pixCreateEvp: {
            route: "/v2/gn/evp",
            method: "post"
          },
          pixListEvp: {
            route: "/v2/gn/evp",
            method: "get"
          },
          pixDeleteEvp: {
            route: "/v2/gn/evp/:chave",
            method: "delete"
          },
          pixSplitDetailCharge: {
            route: "/v2/gn/split/cob/:txid",
            method: "get"
          },
          pixSplitLinkCharge: {
            route: "/v2/gn/split/cob/:txid/vinculo/:splitConfigId",
            method: "put"
          },
          pixSplitUnlinkCharge: {
            route: "/v2/gn/split/cob/:txid/vinculo/:splitConfigId",
            method: "delete"
          },
          pixSplitDetailDueCharge: {
            route: "/v2/gn/split/cobv/:txid",
            method: "get"
          },
          pixSplitLinkDueCharge: {
            route: "/v2/gn/split/cobv/:txid/vinculo/:splitConfigId",
            method: "put"
          },
          pixSplitUnlinkDueCharge: {
            route: "/v2/gn/split/cobv/:txid/vinculo/:splitConfigId",
            method: "delete"
          },
          pixSplitConfig: {
            route: "/v2/gn/split/config",
            method: "post"
          },
          pixSplitConfigId: {
            route: "/v2/gn/split/config/:id",
            method: "put"
          },
          pixSplitDetailConfig: {
            route: "/v2/gn/split/config/:id",
            method: "get"
          },
          getAccountBalance: {
            route: "/v2/gn/saldo",
            method: "get"
          },
          updateAccountConfig: {
            route: "/v2/gn/config",
            method: "put"
          },
          listAccountConfig: {
            route: "/v2/gn/config",
            method: "get"
          },
          pixCreateDueCharge: {
            route: "/v2/cobv/:txid",
            method: "put"
          },
          pixUpdateDueCharge: {
            route: "/v2/cobv/:txid",
            method: "patch"
          },
          pixDetailDueCharge: {
            route: "/v2/cobv/:txid",
            method: "get"
          },
          pixListDueCharges: {
            route: "/v2/cobv/",
            method: "get"
          },
          createReport: {
            route: "/v2/gn/relatorios/extrato-conciliacao",
            method: "post"
          },
          detailReport: {
            route: "/v2/gn/relatorios/:id",
            method: "get"
          },
          createPixRecurring: {
            route: "/v2/rec/",
            method: "post"
          },
          getPixRecurring: {
            route: "/v2/rec/:id",
            method: "get"
          },
          listPixRecurring: {
            route: "/v2/rec/",
            method: "get"
          },
          getChargeRecurring: {
            route: "/v2/cobr/:txid",
            method: "get"
          },
          listChargesRecurring: {
            route: "/v2/cobr",
            method: "get"
          },
          createLocationRecurring: {
            route: "/v2/locrec",
            method: "post"
          },
          createChargeRecurring: {
            route: "/v2/cobr",
            method: "post"
          }
        }
      }.freeze

      OPEN_FINANCE = {
        URL: {
          production: "https://openfinance.api.efipay.com.br",
          sandbox: "https://openfinance-h.api.efipay.com.br"
        },
        ENDPOINTS: {
          authorize: {
            route: "/v1/oauth/token",
            method: "post"
          },
          ofConfigUpdate: {
            route: "/v1/config",
            method: "put"
          },
          ofConfigDetail: {
            route: "/v1/config",
            method: "get"
          },
          ofListParticipants: {
            route: "/v1/participantes",
            method: "get"
          },
          ofStartPixPayment: {
            route: "/v1/pagamentos/pix",
            method: "post"
          },
          ofListPixPayment: {
            route: "/v1/pagamentos/pix",
            method: "get"
          },
          ofDevolutionPix: {
            route: "/v1/pagamentos/pix/:identificadorPagamento/devolver",
            method: "post"
          },
          ofCancelSchedulePix: {
            route: "/v1/pagamentos/pix/:identificadorPagamento/cancelar",
            method: "patch"
          }
        }
      }.freeze
      PAYMENTS = {
        URL: {
          production: "https://pagarcontas.api.efipay.com.br",
          sandbox: nil
        },
        ENDPOINTS: {
          authorize: {
            route: "/v1/oauth/token",
            method: "post"
          },
          payDetailBarcode: {
            route: "/v1/codBarras/:codBarras",
            method: "get"
          },
          payRequestBarcode: {
            route: "/v1/codBarras/:codBarras",
            method: "post"
          },
          payDetailPayment: {
            route: "/v1/:idPagamento",
            method: "get"
          },
          payListPayments: {
            route: "/v1/resumo",
            method: "get"
          }
        }
      }.freeze
      ACCOUNTS_OPENING = {
        URL: {
          production: "https://abrircontas.api.efipay.com.br",
          sandbox: "https://abrircontas-h.api.efipay.com.br"
        },
        ENDPOINTS: {
          authorize: {
            route: "/v1/oauth/token",
            method: "post"
          },
          createAccount: {
            route: "/v1/conta-simplificada",
            method: "post"
          },
          getAccountCredentials: {
            route: "/v1/conta-simplificada/:idContaSimplificada/credenciais",
            method: "get"
          },
          createAccountCertificate: {
            route: "/v1/conta-simplificada/:idContaSimplificada/certificado",
            method: "post"
          },
          accountConfigWebhook: {
            route: "/v1/webhook",
            method: "post"
          },
          accountListWebhook: {
            route: "/v1/webhooks",
            method: "get"
          },
          accountDetailWebhook: {
            route: "/v1/webhook/:identificadorWebhook",
            method: "get"
          },
          accountDeleteWebhook: {
            route: "/v1/webhook/:identificadorWebhook",
            method: "delete"
          }
        }
      }.freeze
    end
  end
end
