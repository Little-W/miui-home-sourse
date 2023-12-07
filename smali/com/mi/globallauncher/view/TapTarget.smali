.class public Lcom/mi/globallauncher/view/TapTarget;
.super Ljava/lang/Object;


# instance fields
.field autoCalculateOuterCircleCenterPoint:Z

.field bounds:Landroid/graphics/Rect;

.field cancelable:Z

.field final description:Ljava/lang/CharSequence;

.field descriptionTextAlpha:F

.field private descriptionTextColor:Ljava/lang/Integer;

.field private descriptionTextColorRes:I

.field private descriptionTextDimen:I

.field private descriptionTextSize:I

.field descriptionTypeface:Landroid/graphics/Typeface;

.field private dimColor:Ljava/lang/Integer;

.field private dimColorRes:I

.field drawShadow:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field id:I

.field outerCircleAlpha:F

.field private outerCircleColor:Ljava/lang/Integer;

.field private outerCircleColorRes:I

.field outerCirclePadding:I

.field private targetCircleColor:Ljava/lang/Integer;

.field private targetCircleColorRes:I

.field targetRadius:I

.field textGravity:I

.field textPadding:I

.field tintTarget:Z

.field final title:Ljava/lang/CharSequence;

.field private titleTextColor:Ljava/lang/Integer;

.field private titleTextColorRes:I

.field private titleTextDimen:I

.field private titleTextSize:I

.field titleTextSpacingMult:F

.field titleTypeface:Landroid/graphics/Typeface;

.field transparentTarget:Z


# direct methods
.method protected constructor <init>(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/mi/globallauncher/view/TapTarget;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->bounds:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null bounds or title"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f75c28f    # 0.96f

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->outerCircleAlpha:F

    const/16 v0, 0x2c

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->targetRadius:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->outerCircleColorRes:I

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->targetCircleColorRes:I

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->dimColorRes:I

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextColorRes:I

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextColorRes:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mi/globallauncher/view/TapTarget;->outerCircleColor:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mi/globallauncher/view/TapTarget;->targetCircleColor:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mi/globallauncher/view/TapTarget;->dimColor:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextColor:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextColor:Ljava/lang/Integer;

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextDimen:I

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextDimen:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextSize:I

    const/16 v1, 0x12

    iput v1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextSize:I

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->id:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mi/globallauncher/view/TapTarget;->drawShadow:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mi/globallauncher/view/TapTarget;->cancelable:Z

    iput-boolean v2, p0, Lcom/mi/globallauncher/view/TapTarget;->tintTarget:Z

    iput-boolean v1, p0, Lcom/mi/globallauncher/view/TapTarget;->transparentTarget:Z

    const v3, 0x3f0a3d71    # 0.54f

    iput v3, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextAlpha:F

    iput-boolean v2, p0, Lcom/mi/globallauncher/view/TapTarget;->autoCalculateOuterCircleCenterPoint:Z

    iput v1, p0, Lcom/mi/globallauncher/view/TapTarget;->textGravity:I

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->textPadding:I

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->outerCirclePadding:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextSpacingMult:F

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->title:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTarget;->description:Ljava/lang/CharSequence;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null title"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;
    .locals 0

    const/4 p0, -0x1

    if-eq p3, p0, :cond_0

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private dimenOrSize(Landroid/content/Context;II)I
    .locals 0

    const/4 p0, -0x1

    if-eq p3, p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p1, p2}, Lcom/mi/globallauncher/view/UiUtil;->sp(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    new-instance v0, Lcom/mi/globallauncher/view/TapTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/mi/globallauncher/view/TapTarget;-><init>(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarMenuItem(Landroid/widget/Toolbar;ILjava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mi/globallauncher/view/TapTarget;->forToolbarMenuItem(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarMenuItem(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    new-instance v0, Lcom/mi/globallauncher/view/ToolbarTapTarget;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mi/globallauncher/view/ToolbarTapTarget;-><init>(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarMenuItem(Landroidx/appcompat/widget/Toolbar;ILjava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mi/globallauncher/view/TapTarget;->forToolbarMenuItem(Landroidx/appcompat/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarMenuItem(Landroidx/appcompat/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    new-instance v0, Lcom/mi/globallauncher/view/ToolbarTapTarget;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mi/globallauncher/view/ToolbarTapTarget;-><init>(Landroidx/appcompat/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarNavigationIcon(Landroid/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->forToolbarNavigationIcon(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarNavigationIcon(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/view/ToolbarTapTarget;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mi/globallauncher/view/ToolbarTapTarget;-><init>(Landroid/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarNavigationIcon(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->forToolbarNavigationIcon(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarNavigationIcon(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/view/ToolbarTapTarget;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mi/globallauncher/view/ToolbarTapTarget;-><init>(Landroidx/appcompat/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarOverflow(Landroid/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->forToolbarOverflow(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarOverflow(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/view/ToolbarTapTarget;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mi/globallauncher/view/ToolbarTapTarget;-><init>(Landroid/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarOverflow(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->forToolbarOverflow(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarOverflow(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/view/ToolbarTapTarget;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mi/globallauncher/view/ToolbarTapTarget;-><init>(Landroidx/appcompat/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forView(Landroid/view/View;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    new-instance v0, Lcom/mi/globallauncher/view/ViewTapTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/mi/globallauncher/view/ViewTapTarget;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public autoCalculateOuterCircleCenterPoint(Z)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput-boolean p1, p0, Lcom/mi/globallauncher/view/TapTarget;->autoCalculateOuterCircleCenterPoint:Z

    return-object p0
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTarget;->bounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Requesting bounds that are not set! Make sure your target is ready"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancelable(Z)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput-boolean p1, p0, Lcom/mi/globallauncher/view/TapTarget;->cancelable:Z

    return-object p0
.end method

.method public descriptionTextAlpha(F)Lcom/mi/globallauncher/view/TapTarget;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextAlpha:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given an invalid alpha value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public descriptionTextColor(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextColorRes:I

    return-object p0
.end method

.method public descriptionTextColorInt(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method descriptionTextColorInt(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextColor:Ljava/lang/Integer;

    iget v1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextColorRes:I

    invoke-direct {p0, p1, v0, v1}, Lcom/mi/globallauncher/view/TapTarget;->colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public descriptionTextDimen(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextDimen:I

    return-object p0
.end method

.method public descriptionTextSize(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextSize:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given negative text size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method descriptionTextSizePx(Landroid/content/Context;)I
    .locals 2

    iget v0, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextSize:I

    iget v1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextDimen:I

    invoke-direct {p0, p1, v0, v1}, Lcom/mi/globallauncher/view/TapTarget;->dimenOrSize(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public descriptionTypeface(Landroid/graphics/Typeface;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTypeface:Landroid/graphics/Typeface;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot use a null typeface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dimColor(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->dimColorRes:I

    return-object p0
.end method

.method public dimColorInt(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->dimColor:Ljava/lang/Integer;

    return-object p0
.end method

.method dimColorInt(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTarget;->dimColor:Ljava/lang/Integer;

    iget v1, p0, Lcom/mi/globallauncher/view/TapTarget;->dimColorRes:I

    invoke-direct {p0, p1, v0, v1}, Lcom/mi/globallauncher/view/TapTarget;->colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public drawShadow(Z)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput-boolean p1, p0, Lcom/mi/globallauncher/view/TapTarget;->drawShadow:Z

    return-object p0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->icon(Landroid/graphics/drawable/Drawable;Z)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;Z)Lcom/mi/globallauncher/view/TapTarget;
    .locals 3

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot use null drawable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public id()I
    .locals 0

    iget p0, p0, Lcom/mi/globallauncher/view/TapTarget;->id:I

    return p0
.end method

.method public id(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->id:I

    return-object p0
.end method

.method public onReady(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public outerCircleAlpha(F)Lcom/mi/globallauncher/view/TapTarget;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->outerCircleAlpha:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given an invalid alpha value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public outerCircleColor(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->outerCircleColorRes:I

    return-object p0
.end method

.method public outerCircleColorInt(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->outerCircleColor:Ljava/lang/Integer;

    return-object p0
.end method

.method outerCircleColorInt(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTarget;->outerCircleColor:Ljava/lang/Integer;

    iget v1, p0, Lcom/mi/globallauncher/view/TapTarget;->outerCircleColorRes:I

    invoke-direct {p0, p1, v0, v1}, Lcom/mi/globallauncher/view/TapTarget;->colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public outerCirclePadding(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->outerCirclePadding:I

    return-object p0
.end method

.method public targetCircleColor(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->targetCircleColorRes:I

    return-object p0
.end method

.method public targetCircleColorInt(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->targetCircleColor:Ljava/lang/Integer;

    return-object p0
.end method

.method targetCircleColorInt(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTarget;->targetCircleColor:Ljava/lang/Integer;

    iget v1, p0, Lcom/mi/globallauncher/view/TapTarget;->targetCircleColorRes:I

    invoke-direct {p0, p1, v0, v1}, Lcom/mi/globallauncher/view/TapTarget;->colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public targetRadius(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->targetRadius:I

    return-object p0
.end method

.method public textColor(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextColorRes:I

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextColorRes:I

    return-object p0
.end method

.method public textColorInt(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextColor:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public textGravity(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->textGravity:I

    return-object p0
.end method

.method public textPadding(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->textPadding:I

    return-object p0
.end method

.method public textTypeface(Landroid/graphics/Typeface;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTypeface:Landroid/graphics/Typeface;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot use a null typeface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public tintTarget(Z)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput-boolean p1, p0, Lcom/mi/globallauncher/view/TapTarget;->tintTarget:Z

    return-object p0
.end method

.method public titleTextColor(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextColorRes:I

    return-object p0
.end method

.method public titleTextColorInt(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method titleTextColorInt(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextColor:Ljava/lang/Integer;

    iget v1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextColorRes:I

    invoke-direct {p0, p1, v0, v1}, Lcom/mi/globallauncher/view/TapTarget;->colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public titleTextDimen(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextDimen:I

    return-object p0
.end method

.method public titleTextSize(I)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextSize:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given negative text size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method titleTextSizePx(Landroid/content/Context;)I
    .locals 2

    iget v0, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextSize:I

    iget v1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextDimen:I

    invoke-direct {p0, p1, v0, v1}, Lcom/mi/globallauncher/view/TapTarget;->dimenOrSize(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public titleTextSpacingMult(F)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTextSpacingMult:F

    return-object p0
.end method

.method public titleTypeface(Landroid/graphics/Typeface;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTarget;->titleTypeface:Landroid/graphics/Typeface;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot use a null typeface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transparentTarget(Z)Lcom/mi/globallauncher/view/TapTarget;
    .locals 0

    iput-boolean p1, p0, Lcom/mi/globallauncher/view/TapTarget;->transparentTarget:Z

    return-object p0
.end method
