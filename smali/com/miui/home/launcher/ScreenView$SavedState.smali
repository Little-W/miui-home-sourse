.class public Lcom/miui/home/launcher/ScreenView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/home/launcher/ScreenView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2363
    new-instance v0, Lcom/miui/home/launcher/ScreenView$SavedState$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/ScreenView$SavedState$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/ScreenView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2353
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 2346
    iput v0, p0, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    .line 2354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/home/launcher/ScreenView$1;)V
    .locals 0

    .line 2345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2349
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    .line 2346
    iput p1, p0, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2359
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2360
    iget p2, p0, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
