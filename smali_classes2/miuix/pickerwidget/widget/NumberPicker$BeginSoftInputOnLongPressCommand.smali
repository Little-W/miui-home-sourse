.class Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 2402
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2406
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2202(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    return-void
.end method
