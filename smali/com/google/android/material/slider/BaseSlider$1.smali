.class Lcom/google/android/material/slider/BaseSlider$1;
.super Ljava/lang/Object;
.source "BaseSlider.java"

# interfaces
.implements Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/slider/BaseSlider;

.field final synthetic val$attrs:Landroid/util/AttributeSet;

.field final synthetic val$defStyleAttr:I


# virtual methods
.method public createTooltipDrawable()Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 7

    .line 375
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$1;->this$0:Lcom/google/android/material/slider/BaseSlider;

    .line 377
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$1;->val$attrs:Landroid/util/AttributeSet;

    sget-object v3, Lcom/google/android/material/R$styleable;->Slider:[I

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider$1;->val$defStyleAttr:I

    sget v5, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    const/4 v0, 0x0

    new-array v6, v0, [I

    .line 376
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 378
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider$1;->this$0:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->access$000(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object p0

    .line 379
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0
.end method
