.class public final synthetic Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$XpLz3XdnueyxukzqrC1w73AZg_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex2/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$XpLz3XdnueyxukzqrC1w73AZg_o;->f$0:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    iput-object p2, p0, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$XpLz3XdnueyxukzqrC1w73AZg_o;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex2/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$XpLz3XdnueyxukzqrC1w73AZg_o;->f$0:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    iget-object p0, p0, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$XpLz3XdnueyxukzqrC1w73AZg_o;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->lambda$getAutoInstallDeepLink$0$MarketAutoInstallRepository(Ljava/lang/String;Lio/reactivex2/ObservableEmitter;)V

    return-void
.end method
