.class Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 2308
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2317
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    .line 2319
    new-array p1, p1, [I

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    .line 2321
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 2655
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2656
    const-class v1, Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2657
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2658
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2660
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2661
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2663
    :cond_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2664
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2665
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2668
    :cond_1
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2669
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2670
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2672
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2674
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2675
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2677
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2680
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2681
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p3, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2682
    aget p2, p1, p2

    aget p1, p1, v2

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 2683
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2685
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    const/16 p1, 0x40

    .line 2686
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2688
    :cond_3
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p1, p2, :cond_4

    const/16 p1, 0x80

    .line 2689
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2691
    :cond_4
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2692
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_6

    :cond_5
    const/16 p1, 0x1000

    .line 2693
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2695
    :cond_6
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_8

    :cond_7
    const/16 p1, 0x2000

    .line 2696
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_8
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 2621
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2622
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2623
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2624
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2625
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2626
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 2627
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2628
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2629
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2630
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2631
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2632
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->getVisibility()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2633
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2635
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2636
    iget-object p5, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p5, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2637
    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 2638
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2640
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_1

    const/16 p2, 0x40

    .line 2641
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2643
    :cond_1
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2

    const/16 p1, 0x80

    .line 2644
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2646
    :cond_2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    .line 2647
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 2599
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2600
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2601
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x40

    .line 2602
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2604
    :cond_0
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_1

    const/16 v1, 0x80

    .line 2605
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2607
    :cond_1
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2608
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2609
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2610
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2612
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2613
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p4, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2614
    aget p3, p1, p3

    aget p1, p1, p2

    invoke-virtual {v1, p3, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 2615
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 2567
    :pswitch_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 2568
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2569
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 2570
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 2574
    :pswitch_1
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2575
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2576
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2577
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2580
    :cond_1
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2581
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2582
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2583
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2588
    :pswitch_2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 2589
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2590
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2591
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2712
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1900(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2713
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2000(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2714
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2100(Lmiuix/pickerwidget/widget/NumberPicker;I)I

    move-result v0

    .line 2716
    :cond_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2717
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$700(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2300(Lmiuix/pickerwidget/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2718
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$700(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2724
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1900(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2725
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2000(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2726
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2100(Lmiuix/pickerwidget/widget/NumberPicker;I)I

    move-result v0

    .line 2728
    :cond_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$900(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2729
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$700(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2300(Lmiuix/pickerwidget/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2730
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$700(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .line 2704
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .line 2708
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 2

    .line 2551
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2552
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2553
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 2554
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2555
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2556
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2557
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2558
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2559
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1, p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 2

    .line 2540
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2541
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2542
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2543
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2544
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2545
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2546
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 2345
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_0
    const/4 v1, 0x3

    .line 2331
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2332
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result v0

    iget-object v5, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v5}, Lmiuix/pickerwidget/widget/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2333
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v0

    add-int v6, p1, v0

    move-object v0, p0

    .line 2330
    invoke-direct/range {v0 .. v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2335
    :pswitch_1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2336
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2337
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2338
    invoke-static {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2335
    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 v1, 0x1

    .line 2341
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2342
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1800(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v0

    sub-int v4, p1, v0

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2343
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result v0

    iget-object v5, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v5}, Lmiuix/pickerwidget/widget/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getBottom()I

    move-result v0

    iget-object v6, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v6}, Lmiuix/pickerwidget/widget/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int v6, p1, v0

    move-object v0, p0

    .line 2340
    invoke-direct/range {v0 .. v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2327
    :cond_0
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2328
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/NumberPicker;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getBottom()I

    move-result v3

    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4}, Lmiuix/pickerwidget/widget/NumberPicker;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2327
    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2352
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2354
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 2374
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2369
    :pswitch_0
    invoke-direct {p0, v0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_1
    const/4 p1, 0x3

    .line 2358
    invoke-direct {p0, v0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 p1, 0x2

    .line 2360
    invoke-direct {p0, v0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 p1, 0x1

    .line 2362
    invoke-direct {p0, v0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 8

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_15

    const/high16 v0, 0x10000

    const v6, 0x8000

    const/16 v7, 0x10

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eq p2, v7, :cond_4

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_0

    return v5

    .line 2505
    :cond_0
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1

    .line 2506
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2507
    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2509
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result p2

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_1
    return v5

    .line 2496
    :cond_2
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_3

    .line 2497
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2498
    invoke-virtual {p0, p1, v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2500
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result p2

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_3
    return v5

    .line 2487
    :cond_4
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    if-ne p1, v4, :cond_5

    move v5, v4

    .line 2489
    :cond_5
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p2, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    .line 2490
    invoke-virtual {p0, p1, v4}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_6
    return v5

    :pswitch_1
    if-eq p2, v7, :cond_d

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_9

    packed-switch p2, :pswitch_data_1

    .line 2450
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2419
    :pswitch_2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2420
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    return v4

    :cond_7
    return v5

    .line 2414
    :pswitch_3
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2415
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    return p1

    :cond_8
    return v5

    .line 2441
    :cond_9
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_a

    .line 2442
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2443
    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2445
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_a
    return v5

    .line 2432
    :cond_b
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_c

    .line 2433
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2434
    invoke-virtual {p0, p1, v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2436
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_c
    return v5

    .line 2426
    :cond_d
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    return v4

    :cond_e
    return v5

    :pswitch_4
    if-eq p2, v7, :cond_13

    if-eq p2, v3, :cond_11

    if-eq p2, v2, :cond_f

    return v5

    .line 2474
    :cond_f
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_10

    .line 2475
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2476
    invoke-virtual {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2478
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result p3

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_10
    return v5

    .line 2465
    :cond_11
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_12

    .line 2466
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2467
    invoke-virtual {p0, p1, v6}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2469
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->getRight()I

    move-result p3

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_12
    return v5

    .line 2457
    :cond_13
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 2458
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p2, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    .line 2459
    invoke-virtual {p0, p1, v4}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_14
    return v5

    :cond_15
    if-eq p2, v3, :cond_1e

    if-eq p2, v2, :cond_1c

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_19

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_16

    .line 2516
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2403
    :cond_16
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2404
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_18

    .line 2405
    :cond_17
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1, v5}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    return v4

    :cond_18
    return v5

    .line 2396
    :cond_19
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2397
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_1b

    .line 2398
    :cond_1a
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {p1, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    return v4

    :cond_1b
    return v5

    .line 2389
    :cond_1c
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1d

    .line 2390
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_1d
    return v5

    .line 2383
    :cond_1e
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_1f

    .line 2384
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_1f
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2522
    :pswitch_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2524
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2523
    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2528
    :pswitch_1
    invoke-direct {p0, p2}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 2531
    :pswitch_2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2533
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2532
    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
