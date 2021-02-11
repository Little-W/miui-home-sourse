.class Lcom/miui/home/recents/util/SpringAnimationUtils$2;
.super Ljava/lang/Object;
.source "SpringAnimationUtils.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/util/SpringAnimationUtils;->getOnHandSpringAnim(Landroidx/dynamicanimation/animation/FloatValueHolder;)Landroidx/dynamicanimation/animation/SpringAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/util/SpringAnimationUtils;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/util/SpringAnimationUtils;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$2;->this$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$2;->this$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    invoke-static {p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->access$100(Lcom/miui/home/recents/util/SpringAnimationUtils;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$2;->this$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    invoke-static {p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->access$100(Lcom/miui/home/recents/util/SpringAnimationUtils;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
