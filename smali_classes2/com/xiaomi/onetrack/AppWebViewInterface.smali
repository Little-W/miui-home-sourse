.class public Lcom/xiaomi/onetrack/AppWebViewInterface;
.super Ljava/lang/Object;


# static fields
.field public static final JAVASCRIPT_INTERFACE_NAME:Ljava/lang/String; = "OneTrack_APP_H5_Bridge"

.field private static final a:Ljava/lang/String; = "AppWebViewInterface"


# instance fields
.field private b:Lcom/xiaomi/onetrack/OneTrack;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/OneTrack;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaomi/onetrack/AppWebViewInterface;->b:Lcom/xiaomi/onetrack/OneTrack;

    return-void
.end method


# virtual methods
.method public track(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "AppWebViewInterface"

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received h5 data. data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/xiaomi/onetrack/AppWebViewInterface;->b:Lcom/xiaomi/onetrack/OneTrack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "AppWebViewInterface"

    const-string v0, "mOneTrack is null, return false"

    .line 22
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 26
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AppWebViewInterface"

    const-string v0, "h5 data is empty, return false"

    .line 27
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/AppWebViewInterface;->b:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/OneTrack;->trackEventFromH5(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
