.class public Lmiuix/animation/ViewTarget;
.super Lmiuix/animation/IAnimTarget;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/IAnimTarget<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final sCreator:Lmiuix/animation/ITargetCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/ITargetCreator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mViewInThread:Z

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lmiuix/animation/ViewTarget$1;

    invoke-direct {v0}, Lmiuix/animation/ViewTarget$1;-><init>()V

    sput-object v0, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lmiuix/animation/IAnimTarget;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lmiuix/animation/ViewTarget;->mViewInThread:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lmiuix/animation/ViewTarget$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lmiuix/animation/ViewTarget;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lmiuix/animation/ViewTarget;->initLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeTask(Ljava/lang/Runnable;)V
    .locals 3

    .line 215
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "miuix_anim"

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewTarget.post failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private initLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 85
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 86
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_init_layout:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 87
    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidthAndState()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeightAndState()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 89
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 90
    sget p2, Lmiuix/animation/R$id;->miuix_animation_tag_init_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public allowAnimRun()Z
    .locals 1

    .line 196
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {v0}, Lmiuix/animation/Folme;->isInDraggingState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    new-instance v1, Lmiuix/animation/ViewTarget$2;

    invoke-direct {v1, p0, v0, p1}, Lmiuix/animation/ViewTarget$2;-><init>(Lmiuix/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lmiuix/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getProperty(I)Lmiuix/animation/property/FloatProperty;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 132
    :pswitch_0
    sget-object p1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 134
    :pswitch_1
    sget-object p1, Lmiuix/animation/property/ViewProperty;->Z:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 104
    :pswitch_2
    sget-object p1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 102
    :pswitch_3
    sget-object p1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 120
    :pswitch_4
    sget-object p1, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 130
    :pswitch_5
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCROLL_Y:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 128
    :pswitch_6
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 126
    :pswitch_7
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 124
    :pswitch_8
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 122
    :pswitch_9
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 116
    :pswitch_a
    sget-object p1, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    return-object p1

    .line 118
    :pswitch_b
    sget-object p1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    return-object p1

    .line 112
    :pswitch_c
    sget-object p1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 114
    :pswitch_d
    sget-object p1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 110
    :pswitch_e
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 108
    :pswitch_f
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 106
    :pswitch_10
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 100
    :pswitch_11
    sget-object p1, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    return-object p1

    .line 98
    :pswitch_12
    sget-object p1, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTargetObject()Landroid/view/View;
    .locals 1

    .line 37
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getTargetObject()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lmiuix/animation/property/FloatProperty;)I
    .locals 1

    .line 142
    sget-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 144
    :cond_0
    sget-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0xf

    return p1

    .line 148
    :cond_2
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x10

    return p1

    .line 150
    :cond_3
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x2

    return p1

    .line 152
    :cond_4
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x3

    return p1

    .line 154
    :cond_5
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x4

    return p1

    .line 156
    :cond_6
    sget-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x5

    return p1

    .line 158
    :cond_7
    sget-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x6

    return p1

    .line 160
    :cond_8
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p1, 0x7

    return p1

    .line 162
    :cond_9
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0x8

    return p1

    .line 164
    :cond_a
    sget-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0xe

    return p1

    .line 166
    :cond_b
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0x9

    return p1

    .line 168
    :cond_c
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p1, 0xa

    return p1

    .line 170
    :cond_d
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p1, 0xb

    return p1

    .line 172
    :cond_e
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p1, 0xc

    return p1

    .line 174
    :cond_f
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p1, 0xd

    return p1

    .line 176
    :cond_10
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 p1, 0x12

    return p1

    .line 178
    :cond_11
    sget-object v0, Lmiuix/animation/property/ViewProperty;->Z:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/16 p1, 0x11

    return p1

    :cond_12
    const/4 p1, -0x1

    return p1
.end method

.method public isValid()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFrameEnd(Z)V
    .locals 2

    .line 58
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 60
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_set_height:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_set_width:I

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-boolean v1, p0, Lmiuix/animation/ViewTarget;->mViewInThread:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 209
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/animation/ViewTarget;->executeTask(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z
    .locals 1

    .line 187
    sget-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    if-eq p1, v0, :cond_1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    if-eq p1, v0, :cond_1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    if-eq p1, v0, :cond_1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_Y:Lmiuix/animation/property/ViewProperty;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-super {p0, p1}, Lmiuix/animation/IAnimTarget;->shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
