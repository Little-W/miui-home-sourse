.class Lcom/miui/home/recents/NavStubView$1;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$000(Lcom/miui/home/recents/NavStubView;)Landroidx/dynamicanimation/animation/FloatValueHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-boolean v0, v0, Lcom/miui/home/recents/NavStubView;->mOnHandHapticFeedRan:Z

    if-nez v0, :cond_0

    .line 238
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/recents/NavStubView;->mOnHandHapticFeedRan:Z

    :cond_0
    return-void
.end method
