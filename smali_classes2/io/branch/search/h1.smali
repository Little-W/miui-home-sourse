.class public Lio/branch/search/h1;
.super Lio/branch/search/BranchLocalAppResult;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/h1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public n:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/h1$a;

    invoke-direct {v0}, Lio/branch/search/h1$a;-><init>()V

    sput-object v0, Lio/branch/search/h1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/search/BranchLocalAppResult;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/h1;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/BranchLocalAppResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/search/BranchLocalAppResult;-><init>(Lio/branch/search/BranchLocalAppResult;)V

    iput-object p2, p0, Lio/branch/search/h1;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    invoke-super {p0}, Lio/branch/search/BranchBaseAppResult;->describeContents()I

    move-result p0

    return p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 5

    invoke-super {p0}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lio/branch/search/h1;->n:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v0, v3, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    const-string p0, "[%s] %s {%d}"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lio/branch/search/BranchBaseAppResult;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lio/branch/search/h1;->n:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
