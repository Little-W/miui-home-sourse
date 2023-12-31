.class public final synthetic Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$dfmYa_3up4E3GLrXNg_aneEJLNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

.field private final synthetic f$1:Landroid/content/ComponentName;

.field private final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$dfmYa_3up4E3GLrXNg_aneEJLNY;->f$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    iput-object p2, p0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$dfmYa_3up4E3GLrXNg_aneEJLNY;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$dfmYa_3up4E3GLrXNg_aneEJLNY;->f$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$dfmYa_3up4E3GLrXNg_aneEJLNY;->f$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    iget-object v1, p0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$dfmYa_3up4E3GLrXNg_aneEJLNY;->f$1:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$dfmYa_3up4E3GLrXNg_aneEJLNY;->f$2:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->lambda$notifyAppTargetEvent$0$GoogleRecommendApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method
