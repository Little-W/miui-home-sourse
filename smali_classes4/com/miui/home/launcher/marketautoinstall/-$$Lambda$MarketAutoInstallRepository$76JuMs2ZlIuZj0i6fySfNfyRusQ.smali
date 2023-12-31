.class public final synthetic Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$76JuMs2ZlIuZj0i6fySfNfyRusQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$76JuMs2ZlIuZj0i6fySfNfyRusQ;->f$0:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;

    iput-object p2, p0, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$76JuMs2ZlIuZj0i6fySfNfyRusQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$76JuMs2ZlIuZj0i6fySfNfyRusQ;->f$0:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;

    iget-object p0, p0, Lcom/miui/home/launcher/marketautoinstall/-$$Lambda$MarketAutoInstallRepository$76JuMs2ZlIuZj0i6fySfNfyRusQ;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->lambda$getAutoInstallDeepLink$2(Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
