.class public Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
.super Ljava/lang/Object;
.source "GroupedRecentTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$1;

    invoke-direct {v0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSplitBounds()Lcom/android/wm/shell/util/StagedSplitBounds;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    return-object p0
.end method

.method public getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
