.class public final Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;
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
    name = "MiuiFreeFormInfoChange"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private changeMask:I

.field private freeFormScale:F

.field private freeformExiting:Z

.field private freeformTaskHidden:Z

.field private isLandcapeFreeform:Z

.field private pinActiveTime:J

.field private pinFloatingWindowPos:Landroid/graphics/Rect;

.field private windowState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 873
    new-instance v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange$1;

    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange$1;-><init>()V

    sput-object v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->pinFloatingWindowPos:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 723
    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->changeMask:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->pinFloatingWindowPos:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 723
    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->changeMask:I

    .line 729
    invoke-virtual {p0, p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/app/MiuiFreeFormManager$1;)V
    .locals 0

    .line 707
    invoke-direct {p0, p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->windowState:I

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeFormScale:F

    .line 863
    new-instance v0, Landroid/graphics/Rect;

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->isLandcapeFreeform:Z

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformTaskHidden:Z

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformExiting:Z

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->pinActiveTime:J

    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->changeMask:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 847
    iget p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->windowState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    iget p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeFormScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 849
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    iget-object p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget-boolean p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->isLandcapeFreeform:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 854
    iget-boolean p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformTaskHidden:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 855
    iget-boolean p2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformExiting:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 856
    iget-wide v0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->pinActiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 857
    iget p0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->changeMask:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
