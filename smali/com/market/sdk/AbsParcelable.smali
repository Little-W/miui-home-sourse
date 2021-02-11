.class public abstract Lcom/market/sdk/AbsParcelable;
.super Ljava/lang/Object;
.source "AbsParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected version:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/market/sdk/AbsParcelable;->version:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/market/sdk/AbsParcelable;->version:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/market/sdk/AbsParcelable;->version:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 21
    iget p2, p0, Lcom/market/sdk/AbsParcelable;->version:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
