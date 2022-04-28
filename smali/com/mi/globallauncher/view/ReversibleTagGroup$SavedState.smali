.class Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ReversibleTagGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/ReversibleTagGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checkedPosition:I

.field input:Ljava/lang/String;

.field tagCount:I

.field tags:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 603
    new-instance v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState$1;

    invoke-direct {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState$1;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 619
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->tagCount:I

    .line 621
    iget v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->tagCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->tags:[Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->tags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->checkedPosition:I

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->input:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 628
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 633
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 634
    iget-object p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->tags:[Ljava/lang/String;

    array-length p2, p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->tagCount:I

    .line 635
    iget p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->tagCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    iget-object p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->tags:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 637
    iget p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->checkedPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    iget-object p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->input:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
