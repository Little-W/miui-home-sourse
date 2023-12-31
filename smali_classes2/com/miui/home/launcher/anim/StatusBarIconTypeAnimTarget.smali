.class public final Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;
.super Ljava/lang/Object;
.source "StatusBarIconTypeAnimTarget.kt"

# interfaces
.implements Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;


# instance fields
.field private final context:Landroid/content/Context;

.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final mView:Landroid/view/View;

.field private final rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->rect:Landroid/graphics/Rect;

    .line 10
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getIconImageViewOriginalLocation()Landroid/graphics/Rect;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getIconRadius()F
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;->rect:Landroid/graphics/Rect;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultIconRadiusForRect(Landroid/content/Context;Landroid/graphics/Rect;)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    const/high16 p0, 0x41400000    # 12.0f

    return p0
.end method

.method public isLauncherView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
