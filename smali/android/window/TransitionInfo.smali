.class public final Landroid/window/TransitionInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionInfo$Root;,
        Landroid/window/TransitionInfo$AnimationOptions;,
        Landroid/window/TransitionInfo$Change;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TransitionInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "no implementation"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "no implementation"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "no implementation"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRootCount()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "no implementation"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRootLeash()Landroid/view/SurfaceControl;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "no implementation"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "no implementation"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "no implementation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
