.class public abstract Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;
.super Ljava/lang/Object;
.source "OnComputeInternalInsetsListenerCompat.java"


# instance fields
.field mWrapper:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat$1;-><init>(Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;->mWrapper:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-void
.end method


# virtual methods
.method getWrapper()Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;->mWrapper:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-object p0
.end method

.method public abstract onComputeInternalInsets(Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;)V
.end method
