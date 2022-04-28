.class Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;
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
    name = "PressedStateHelper"
.end annotation


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 2268
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2272
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    const/4 p1, 0x2

    .line 2273
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    .line 2293
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    .line 2294
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2295
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2296
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    .line 2300
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    .line 2301
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2302
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2303
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1, p0}, Lmiuix/pickerwidget/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    const/4 v0, 0x0

    .line 2279
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2280
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2281
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2282
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1600(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2283
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1602(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 2284
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4}, Lmiuix/pickerwidget/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->invalidate(IIII)V

    .line 2286
    :cond_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2287
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1802(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 2288
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1900(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .line 2308
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2324
    :pswitch_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 2335
    :pswitch_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2336
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2337
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2336
    invoke-virtual {v0, p0, v3, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2339
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1802(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 2340
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1900(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2326
    :pswitch_2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1600(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2327
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2328
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2327
    invoke-virtual {v0, p0, v3, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2330
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1600(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1602(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 2331
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4}, Lmiuix/pickerwidget/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2310
    :pswitch_3
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2317
    :pswitch_4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1802(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 2318
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1900(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2312
    :pswitch_5
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1602(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 2313
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1700(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4}, Lmiuix/pickerwidget/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->invalidate(IIII)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
