.class Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerAdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mBadge:Landroid/graphics/drawable/Drawable;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mForeground:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V
    .locals 0

    .line 716
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 717
    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 718
    iput-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 719
    iput-object p3, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 720
    iput-object p4, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    return-void
.end method

.method private newChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    .line 733
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 726
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->newChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->newChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 728
    iget-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->newChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 729
    new-instance v3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    iget-object v4, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    return-object v3
.end method
