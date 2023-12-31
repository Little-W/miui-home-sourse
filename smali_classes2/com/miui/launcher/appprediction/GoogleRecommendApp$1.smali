.class Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;
.super Ljava/lang/Object;
.source "GoogleRecommendApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/launcher/appprediction/GoogleRecommendApp;->lambda$notifyAppTargetEvent$0(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;


# direct methods
.method constructor <init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {v0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$000(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {p0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$000(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Landroid/app/prediction/AppPredictor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    :cond_0
    return-void
.end method
