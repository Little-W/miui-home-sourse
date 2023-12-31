.class Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;
.super Lmiuix/core/util/SoftReferenceSingleton;
.source "CalendarFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/SoftReferenceSingleton<",
        "Lmiuix/pickerwidget/date/CalendarFormatSymbols;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lmiuix/core/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;->createInstance(Ljava/lang/Object;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object p0

    return-object p0
.end method

.method protected createInstance(Ljava/lang/Object;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;
    .locals 1

    .line 38
    new-instance p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;-><init>(Landroid/content/Context;Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;)V

    return-object p0
.end method

.method protected bridge synthetic updateInstance(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;->updateInstance(Lmiuix/pickerwidget/date/CalendarFormatSymbols;Ljava/lang/Object;)V

    return-void
.end method

.method protected updateInstance(Lmiuix/pickerwidget/date/CalendarFormatSymbols;Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lmiuix/core/util/SoftReferenceSingleton;->updateInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    check-cast p2, Landroid/content/Context;

    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->access$100(Lmiuix/pickerwidget/date/CalendarFormatSymbols;Landroid/content/Context;)V

    return-void
.end method
