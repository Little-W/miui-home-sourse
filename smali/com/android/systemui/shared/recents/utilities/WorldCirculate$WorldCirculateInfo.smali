.class public Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/utilities/WorldCirculate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorldCirculateInfo"
.end annotation


# instance fields
.field public mIsWorldCirculate:Z

.field public mWorldCirculateDeviceName:Ljava/lang/String;

.field public mWorldCirculateOwnerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mIsWorldCirculate:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mWorldCirculateOwnerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mWorldCirculateDeviceName:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mIsWorldCirculate:Z

    iput-object p2, p0, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mWorldCirculateDeviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mWorldCirculateOwnerName:Ljava/lang/String;

    return-void
.end method
