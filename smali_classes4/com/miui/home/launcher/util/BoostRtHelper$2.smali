.class Lcom/miui/home/launcher/util/BoostRtHelper$2;
.super Ljava/lang/Object;
.source "BoostRtHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/BoostRtHelper;->boostTurboSchedActionWithPriority(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/util/BoostRtHelper;

.field final synthetic val$threadIds:[I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/util/BoostRtHelper;[I)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/miui/home/launcher/util/BoostRtHelper$2;->this$0:Lcom/miui/home/launcher/util/BoostRtHelper;

    iput-object p2, p0, Lcom/miui/home/launcher/util/BoostRtHelper$2;->val$threadIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 186
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper$2;->val$threadIds:[I

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/launcher/utils/BoostHelper;->setTurboSchedActionWithPriority([IJ)V

    return-void
.end method
