.class Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat$1;->this$0:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat$1;->this$0:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    new-instance v0, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;-><init>(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;->onComputeInternalInsets(Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;)V

    return-void
.end method
