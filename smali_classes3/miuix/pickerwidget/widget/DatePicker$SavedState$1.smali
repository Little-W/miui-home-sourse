.class Lmiuix/pickerwidget/widget/DatePicker$SavedState$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/DatePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiuix/pickerwidget/widget/DatePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 802
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/pickerwidget/widget/DatePicker$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/pickerwidget/widget/DatePicker$SavedState;
    .locals 1

    .line 805
    new-instance p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;Lmiuix/pickerwidget/widget/DatePicker$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 802
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState$1;->newArray(I)[Lmiuix/pickerwidget/widget/DatePicker$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiuix/pickerwidget/widget/DatePicker$SavedState;
    .locals 0

    .line 809
    new-array p0, p1, [Lmiuix/pickerwidget/widget/DatePicker$SavedState;

    return-object p0
.end method
