.class Lcom/miui/home/launcher/maml/auth/RadicalFailureHandler;
.super Ljava/lang/Object;
.source "RadicalFailureHandler.java"

# interfaces
.implements Lcom/miui/home/launcher/maml/auth/AuthFailureHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    const/4 p0, 0x5

    .line 24
    iput p0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->deleteWidgetWay:I

    .line 25
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 29
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "mamlTag"

    .line 30
    iget-object p2, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isAuthorityFail"

    const/4 p2, 0x1

    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 32
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil;->sendOfflineNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RadicalFailureHandler"

    const-string p2, "onFail"

    .line 34
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
