.class public Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;
.super Ljava/lang/Object;
.source "FancyDrawableCompat.java"


# static fields
.field private static final CLEAR:Landroid/graphics/PorterDuffXfermode;

.field private static final DST_IN:Landroid/graphics/PorterDuffXfermode;

.field private static final sInversePath:Landroid/graphics/Path;

.field private static final sPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->sPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLEAR:Landroid/graphics/PorterDuffXfermode;

    .line 37
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->DST_IN:Landroid/graphics/PorterDuffXfermode;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->sInversePath:Landroid/graphics/Path;

    return-void
.end method

.method static draw(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Path;)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 44
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static isInstance(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 21
    instance-of p0, p0, Lcom/miui/maml/FancyDrawable;

    return p0
.end method

.method public static updateRatio(Ljava/lang/Object;F)V
    .locals 3

    .line 25
    instance-of v0, p0, Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_1

    .line 26
    check-cast p0, Lcom/miui/maml/FancyDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    float-to-double v1, p1

    const-string p1, "ratio"

    .line 31
    invoke-static {p0, v0, p1, v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    :cond_1
    return-void
.end method
