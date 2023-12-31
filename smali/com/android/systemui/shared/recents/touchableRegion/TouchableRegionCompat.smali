.class public Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;
.super Ljava/lang/Object;
.source "TouchableRegionCompat.java"


# static fields
.field public static final TOUCHABLE_INSETS_CONTENT:I = 0x1

.field public static final TOUCHABLE_INSETS_FRAME:I = 0x0

.field public static final TOUCHABLE_INSETS_REGION:I = 0x3

.field public static final TOUCHABLE_INSETS_VISIBLE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;->getWrapper()Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public static removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V
    .locals 0

    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;->getWrapper()Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method
