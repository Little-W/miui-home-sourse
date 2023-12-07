.class public final Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;
.super Ljava/lang/Object;
.source "PreviewIconClickDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreviewIconClickDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreviewIconClickDelegate.kt\ncom/miui/home/launcher/folder/PreviewIconClickDelegate\n*L\n1#1,68:1\n*E\n"
.end annotation


# instance fields
.field private li:Lcom/miui/home/launcher/folder/ListenerInfo;

.field private mIsDelegateClick:Z

.field private final mOnClickListener$delegate:Lkotlin/Lazy;

.field private mTimeStampTouchDown:J

.field private final mUserPressThreshold:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 15
    iput-wide v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mTimeStampTouchDown:J

    const-wide/16 v0, 0x12c

    .line 16
    iput-wide v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mUserPressThreshold:J

    .line 17
    new-instance v0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;-><init>(Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mOnClickListener$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mOnClickListener$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private final preformClickInternal(Lcom/miui/home/launcher/folder/FolderPreviewIconView;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->li:Lcom/miui/home/launcher/folder/ListenerInfo;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/view/View;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/folder/ListenerInfo;->onViewClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final delegateViewClick(Lcom/miui/home/launcher/folder/FolderPreviewIconView;Lcom/miui/home/launcher/folder/ListenerInfo;)V
    .locals 0

    .line 27
    iput-object p2, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->li:Lcom/miui/home/launcher/folder/ListenerInfo;

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mIsDelegateClick:Z

    if-eqz p1, :cond_1

    .line 30
    iget-boolean p2, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mIsDelegateClick:Z

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->getMOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final getLi()Lcom/miui/home/launcher/folder/ListenerInfo;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->li:Lcom/miui/home/launcher/folder/ListenerInfo;

    return-object p0
.end method

.method public final hasViewClickListeners()Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->li:Lcom/miui/home/launcher/folder/ListenerInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onSendAccessibilityEvent(ILcom/miui/home/launcher/folder/FolderPreviewIconView;)V
    .locals 1

    const-string v0, "previewIconView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mIsDelegateClick:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 39
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->preformClickInternal(Lcom/miui/home/launcher/folder/FolderPreviewIconView;)V

    :cond_0
    return-void
.end method

.method public final onViewTouchEvent(Landroid/view/MotionEvent;Lcom/miui/home/launcher/folder/FolderPreviewIconView;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewIconView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mIsDelegateClick:Z

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mTimeStampTouchDown:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mUserPressThreshold:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->hasViewClickListeners()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 55
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->preformClickInternal(Lcom/miui/home/launcher/folder/FolderPreviewIconView;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mTimeStampTouchDown:J

    :cond_2
    :goto_0
    return-void
.end method
