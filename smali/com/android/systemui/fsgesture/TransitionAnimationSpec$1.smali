.class final Lcom/android/systemui/fsgesture/TransitionAnimationSpec$1;
.super Ljava/lang/Object;
.source "TransitionAnimationSpec.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/systemui/fsgesture/TransitionAnimationSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    .locals 1

    .line 41
    new-instance v0, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    invoke-direct {v0, p1}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    .locals 0

    .line 46
    new-array p1, p1, [Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec$1;->newArray(I)[Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    move-result-object p1

    return-object p1
.end method
