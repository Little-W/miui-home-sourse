.class Lcom/miui/maml/elements/TimepanelScreenElement$1;
.super Ljava/lang/Object;
.source "TimepanelScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/TimepanelScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/TimepanelScreenElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/TimepanelScreenElement;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 66
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$000(Lcom/miui/maml/elements/TimepanelScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 75
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 76
    iget-object v3, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    iget-object v3, v3, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 77
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$100(Lcom/miui/maml/elements/TimepanelScreenElement;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$100(Lcom/miui/maml/elements/TimepanelScreenElement;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    iget-object v2, v2, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$200(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    iget-object v2, v2, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-static {v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$300(Lcom/miui/maml/elements/TimepanelScreenElement;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-static {v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$400(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 87
    :cond_3
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-static {v2, v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$402(Lcom/miui/maml/elements/TimepanelScreenElement;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 88
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move v0, v3

    .line 91
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 92
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 93
    iget-object v5, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-static {v5, v4}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$500(Lcom/miui/maml/elements/TimepanelScreenElement;C)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 95
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 97
    iget-object v4, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-static {v4}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$600(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_5
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    iget-object v1, v1, Lcom/miui/maml/elements/TimepanelScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 102
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$600(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$702(Lcom/miui/maml/elements/TimepanelScreenElement;I)I

    .line 103
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$700(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->setActualWidth(D)V

    .line 105
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->requestUpdate()V

    return-void
.end method
