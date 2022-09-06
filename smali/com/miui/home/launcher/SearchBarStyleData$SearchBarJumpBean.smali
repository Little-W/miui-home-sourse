.class Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;
.super Ljava/lang/Object;
.source "SearchBarStyleData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarStyleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchBarJumpBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private expId:Ljava/lang/String;

.field private jumpUri:Ljava/lang/String;

.field private testHashEnd:I

.field private testHashStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 616
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->expId:Ljava/lang/String;

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->testHashStart:I

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->testHashEnd:I

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->jumpUri:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;)Ljava/lang/String;
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->jumpUri:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExpId()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->expId:Ljava/lang/String;

    return-object v0
.end method

.method public getJumpUri()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->jumpUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTestHashEnd()I
    .locals 1

    .line 568
    iget v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->testHashEnd:I

    return v0
.end method

.method public getTestHashStart()I
    .locals 1

    .line 560
    iget v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->testHashStart:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchBarJumpBean{expId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->expId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", testHashStart="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->testHashStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", testHashEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->testHashEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", jumpUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->jumpUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 590
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->expId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    iget p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->testHashStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->testHashEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->jumpUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
