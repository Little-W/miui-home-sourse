.class Lcom/miui/home/launcher/Background$1;
.super Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;
.source "Background.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Background;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Background;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Background;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLoadingFinished()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$100(Lcom/miui/home/launcher/Background;)Lcom/miui/home/launcher/animate/SpreadCircle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Background;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$100(Lcom/miui/home/launcher/Background;)Lcom/miui/home/launcher/animate/SpreadCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    .line 143
    invoke-virtual {v1}, Lcom/miui/home/launcher/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070444

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpreadCircle;->setMinRadius(F)V

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$100(Lcom/miui/home/launcher/Background;)Lcom/miui/home/launcher/animate/SpreadCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    .line 145
    invoke-virtual {v1}, Lcom/miui/home/launcher/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070443

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpreadCircle;->setMaxRadius(F)V

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$100(Lcom/miui/home/launcher/Background;)Lcom/miui/home/launcher/animate/SpreadCircle;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/animate/SpreadCircle;->setDuraton(J)V

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Background;->access$202(Lcom/miui/home/launcher/Background;I)I

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Background;->access$302(Lcom/miui/home/launcher/Background;I)I

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$400(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$500(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$400(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$500(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$400(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$500(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$400(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Background$1$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Background$1$1;-><init>(Lcom/miui/home/launcher/Background$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$400(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Background$1$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Background$1$2;-><init>(Lcom/miui/home/launcher/Background$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {v0}, Lcom/miui/home/launcher/Background;->access$500(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Background$1$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Background$1$3;-><init>(Lcom/miui/home/launcher/Background$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
