.class public final Lio/branch/search/ui/BranchExtra$AppStoreExtra;
.super Lio/branch/search/ui/BranchExtra;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/BranchExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppStoreExtra"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ui/BranchExtra$AppStoreExtra$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/ui/BranchExtra$AppStoreExtra;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appSizeInMB:Ljava/lang/String;

.field private final averageRating:F

.field private final downloadsCount:Ljava/lang/String;

.field private final ratingsCount:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/ui/BranchExtra$AppStoreExtra$Creator;

    invoke-direct {v0}, Lio/branch/search/ui/BranchExtra$AppStoreExtra$Creator;-><init>()V

    sput-object v0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "downloadsCount"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSizeInMB"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/ui/BranchExtra;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->averageRating:F

    iput-wide p2, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->ratingsCount:J

    iput-object p4, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->downloadsCount:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->appSizeInMB:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;

    iget v0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->averageRating:F

    iget v1, p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->averageRating:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->ratingsCount:J

    iget-wide v2, p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->ratingsCount:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->downloadsCount:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->downloadsCount:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->appSizeInMB:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->appSizeInMB:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->averageRating:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->ratingsCount:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->downloadsCount:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->appSizeInMB:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppStoreExtra(averageRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->averageRating:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ratingsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->ratingsCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->downloadsCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appSizeInMB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->appSizeInMB:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->averageRating:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->ratingsCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->downloadsCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;->appSizeInMB:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
