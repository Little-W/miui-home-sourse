.class public final Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
.super Ljava/lang/Object;
.source "MiuiFreeFormManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/MiuiFreeFormManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MiuiFreeFormStackInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bounds:Landroid/graphics/Rect;

.field public configuration:Landroid/content/res/Configuration;

.field public cornerPosition:I

.field public displayId:I

.field public enterMiniFreeformFromRect:Landroid/graphics/Rect;

.field public enterMiniFreeformReason:Ljava/lang/String;

.field public freeFormScale:F

.field public freeformExiting:Z

.field public freeformTaskHidden:Z

.field public inPinMode:Z

.field public isLandcapeFreeform:Z

.field public isNormalFreeForm:Z

.field public packageName:Ljava/lang/String;

.field public pinFloatingWindowPos:Landroid/graphics/Rect;

.field public smallWindowBounds:Landroid/graphics/Rect;

.field public stackId:I

.field public userId:I

.field public windowState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 982
    new-instance v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo$1;

    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo$1;-><init>()V

    sput-object v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    .line 897
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->configuration:Landroid/content/res/Configuration;

    .line 898
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    .line 900
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 901
    iput-boolean v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isNormalFreeForm:Z

    .line 907
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformFromRect:Landroid/graphics/Rect;

    const-string v0, ""

    .line 909
    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformReason:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    .line 897
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->configuration:Landroid/content/res/Configuration;

    .line 898
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    .line 900
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 901
    iput-boolean v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isNormalFreeForm:Z

    .line 907
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformFromRect:Landroid/graphics/Rect;

    const-string v0, ""

    .line 909
    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformReason:Ljava/lang/String;

    .line 998
    invoke-virtual {p0, p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/app/MiuiFreeFormManager$1;)V
    .locals 0

    .line 889
    invoke-direct {p0, p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInFreeFormMode()Z
    .locals 0

    .line 1051
    iget p0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMiniFreeFormMode()Z
    .locals 1

    .line 1047
    iget p0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->stackId:I

    .line 958
    new-instance v0, Landroid/graphics/Rect;

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->displayId:I

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    .line 965
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 966
    new-instance v0, Landroid/graphics/Rect;

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    .line 969
    new-instance v0, Landroid/graphics/Rect;

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isNormalFreeForm:Z

    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->cornerPosition:I

    .line 973
    new-instance v0, Landroid/graphics/Rect;

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformFromRect:Landroid/graphics/Rect;

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformReason:Ljava/lang/String;

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isLandcapeFreeform:Z

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeformTaskHidden:Z

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeformExiting:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1056
    invoke-virtual {p0, v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1003
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Stack id="

    .line 1004
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->stackId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bounds="

    .line 1006
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " displayId="

    .line 1008
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->displayId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " userId="

    .line 1010
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " windowState="

    .line 1012
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " freeFormScale="

    .line 1014
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " packageName="

    .line 1016
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {p0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " smallWindowBounds="

    .line 1019
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, " configuration="

    .line 1022
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " inPinMode="

    .line 1024
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    iget-boolean p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " pinFloatingWindowPos="

    .line 1026
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isNormalFreeForm="

    .line 1028
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    iget-boolean p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isNormalFreeForm:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " cornerPosition="

    .line 1030
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    iget p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->cornerPosition:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " enterMiniFreeformFromRect="

    .line 1032
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformFromRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " enterMiniFreeformReason="

    .line 1034
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    iget-object p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformReason:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isLandcapeFreeform="

    .line 1036
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    iget-boolean p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isLandcapeFreeform:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " freeformTaskHidden="

    .line 1038
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    iget-boolean p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeformTaskHidden:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " freeformExiting="

    .line 1040
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    iget-boolean p0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeformExiting:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    .line 1042
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 924
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->stackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->displayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    iget v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 933
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 935
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    iget-boolean p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 940
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    iget-boolean p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isNormalFreeForm:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 945
    iget p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->cornerPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformFromRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformFromRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformFromRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformFromRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->enterMiniFreeformReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 951
    iget-boolean p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isLandcapeFreeform:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 952
    iget-boolean p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeformTaskHidden:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 953
    iget-boolean p0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeformExiting:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
