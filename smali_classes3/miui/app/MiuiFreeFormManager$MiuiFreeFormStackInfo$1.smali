.class Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo$1;
.super Ljava/lang/Object;
.source "MiuiFreeFormManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 982
    invoke-virtual {p0, p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .locals 1

    .line 985
    new-instance p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;-><init>(Landroid/os/Parcel;Lmiui/app/MiuiFreeFormManager$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 982
    invoke-virtual {p0, p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo$1;->newArray(I)[Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .locals 0

    .line 990
    new-array p0, p1, [Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    return-object p0
.end method
