.class Lmiuix/androidbasewidget/widget/SeekBar$1;
.super Ljava/lang/Object;
.source "SeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/androidbasewidget/widget/SeekBar;


# direct methods
.method constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    .line 311
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$000(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMax()I

    move-result v0

    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v3

    .line 313
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-lez v0, :cond_0

    .line 314
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v0

    sub-int v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 316
    :goto_0
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$200(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v3

    cmpl-float v3, v0, v3

    const-string v5, "targe"

    const/4 v6, 0x2

    if-lez v3, :cond_1

    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$300(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 317
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0, v4}, Lmiuix/androidbasewidget/widget/SeekBar;->access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    goto :goto_1

    .line 319
    :cond_1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    .line 320
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v2

    iget-object v4, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v4}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 322
    :goto_1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 323
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v5, v4, v2

    iget-object v5, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v5}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 324
    invoke-virtual {v5, v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v5, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v7, Lmiuix/androidbasewidget/widget/SeekBar$1$1;

    invoke-direct {v7, p0}, Lmiuix/androidbasewidget/widget/SeekBar$1$1;-><init>(Lmiuix/androidbasewidget/widget/SeekBar$1;)V

    aput-object v7, v5, v2

    .line 325
    invoke-virtual {v3, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v4, v6

    .line 323
    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 337
    :cond_2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v3

    invoke-static {v0, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$700(Lmiuix/androidbasewidget/widget/SeekBar;F)I

    move-result v0

    .line 338
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$800(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v4

    invoke-static {v3, v4}, Lmiuix/androidbasewidget/widget/SeekBar;->access$700(Lmiuix/androidbasewidget/widget/SeekBar;F)I

    move-result v3

    if-ge p2, v0, :cond_3

    .line 341
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p2, v0}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V

    move p2, v0

    goto :goto_2

    :cond_3
    if-le p2, v3, :cond_4

    .line 344
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p2, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V

    move p2, v3

    .line 347
    :cond_4
    :goto_2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->getMax()I

    move-result v3

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v3

    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 349
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$900(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 350
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 352
    :cond_7
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->access$902(Lmiuix/androidbasewidget/widget/SeekBar;Z)Z

    .line 354
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 355
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_8
    return-void

    nop

    :array_0
    .array-data 4
        0x43af0000    # 350.0f
        0x3f666666    # 0.9f
        0x3e19999a    # 0.15f
    .end array-data
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
