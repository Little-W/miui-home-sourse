.class Lcom/market/sdk/homeguide/AppstoreUserGuide$1;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->this$0:Lcom/market/sdk/homeguide/AppstoreUserGuide;

    iput-object p2, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->val$interceptor:Lcom/market/sdk/homeguide/Interceptor;

    iput-object p3, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->val$data:Lcom/market/sdk/homeguide/HomeUserGuideData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 1

    iget-object v0, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->val$data:Lcom/market/sdk/homeguide/HomeUserGuideData;

    invoke-virtual {v0}, Lcom/market/sdk/homeguide/HomeUserGuideData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->val$data:Lcom/market/sdk/homeguide/HomeUserGuideData;

    invoke-virtual {p0}, Lcom/market/sdk/homeguide/HomeUserGuideData;->getLocalFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    new-array p1, p0, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    const-string v0, "need_show_user_guide"

    invoke-static {v0, p0, p1}, Lcom/market/sdk/utils/PrefUtils;->setBoolean(Ljava/lang/String;Z[Lcom/market/sdk/utils/PrefUtils$PrefFile;)V

    :cond_1
    return-void
.end method

.method public onIntercept()Z
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/homeguide/AppstoreUserGuide$1;->val$interceptor:Lcom/market/sdk/homeguide/Interceptor;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/market/sdk/homeguide/Interceptor;->intercept()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
