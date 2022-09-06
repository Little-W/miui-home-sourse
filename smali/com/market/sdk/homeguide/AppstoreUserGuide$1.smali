.class Lcom/market/sdk/homeguide/AppstoreUserGuide$1;
.super Ljava/lang/Object;
.source "AppstoreUserGuide.java"

# interfaces
.implements Lcom/market/sdk/homeguide/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/homeguide/AppstoreUserGuide;->show(Lcom/market/sdk/homeguide/HomeUserGuideData;Lcom/market/sdk/homeguide/Interceptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/homeguide/AppstoreUserGuide;

.field final synthetic val$data:Lcom/market/sdk/homeguide/HomeUserGuideData;

.field final synthetic val$interceptor:Lcom/market/sdk/homeguide/Interceptor;


# direct methods
.method constructor <init>(Lcom/market/sdk/homeguide/AppstoreUserGuide;Lcom/market/sdk/homeguide/Interceptor;Lcom/market/sdk/homeguide/HomeUserGuideData;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->this$0:Lcom/market/sdk/homeguide/AppstoreUserGuide;

    iput-object p2, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->val$interceptor:Lcom/market/sdk/homeguide/Interceptor;

    iput-object p3, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->val$data:Lcom/market/sdk/homeguide/HomeUserGuideData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->val$data:Lcom/market/sdk/homeguide/HomeUserGuideData;

    invoke-virtual {v0}, Lcom/market/sdk/homeguide/HomeUserGuideData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->val$data:Lcom/market/sdk/homeguide/HomeUserGuideData;

    invoke-virtual {v1}, Lcom/market/sdk/homeguide/HomeUserGuideData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "need_show_user_guide"

    const/4 v0, 0x0

    .line 169
    new-array v1, v0, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {p1, v0, v1}, Lcom/market/sdk/utils/PrefUtils;->setBoolean(Ljava/lang/String;Z[Lcom/market/sdk/utils/PrefUtils$PrefFile;)V

    :cond_1
    return-void
.end method

.method public onIntercept()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->val$interceptor:Lcom/market/sdk/homeguide/Interceptor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/market/sdk/homeguide/Interceptor;->intercept()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
