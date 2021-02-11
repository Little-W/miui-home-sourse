.class public Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;
.super Ljava/lang/Object;
.source "InternalInsetsInfoCompat.java"


# instance fields
.field info:Landroid/view/ViewTreeObserver$InternalInsetsInfo;


# direct methods
.method public constructor <init>(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->info:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    return-void
.end method


# virtual methods
.method public setTouchableInsets(I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->info:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method public setTouchableRegion(Landroid/graphics/Region;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->info:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public setTouchableRegionPath(Landroid/graphics/Path;Landroid/graphics/Region;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->info:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    return-void
.end method
