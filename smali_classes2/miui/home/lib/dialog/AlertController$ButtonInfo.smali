.class Lmiui/home/lib/dialog/AlertController$ButtonInfo;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ButtonInfo"
.end annotation


# instance fields
.field private mButton:Lmiui/home/lib/dialog/widget/GroupButton;

.field private mMsg:Landroid/os/Message;

.field private final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mStyle:I

.field private final mText:Ljava/lang/CharSequence;

.field private final mWhich:I


# direct methods
.method static synthetic access$1000(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1884
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Lmiui/home/lib/dialog/widget/GroupButton;
    .locals 0

    .line 1884
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->mButton:Lmiui/home/lib/dialog/widget/GroupButton;

    return-object p0
.end method

.method static synthetic access$302(Lmiui/home/lib/dialog/AlertController$ButtonInfo;Lmiui/home/lib/dialog/widget/GroupButton;)Lmiui/home/lib/dialog/widget/GroupButton;
    .locals 0

    .line 1884
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->mButton:Lmiui/home/lib/dialog/widget/GroupButton;

    return-object p1
.end method

.method static synthetic access$400(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Landroid/os/Message;
    .locals 0

    .line 1884
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$402(Lmiui/home/lib/dialog/AlertController$ButtonInfo;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    .line 1884
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$500(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 1884
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$600(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)I
    .locals 0

    .line 1884
    iget p0, p0, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->mWhich:I

    return p0
.end method

.method static synthetic access$900(Lmiui/home/lib/dialog/AlertController$ButtonInfo;)I
    .locals 0

    .line 1884
    iget p0, p0, Lmiui/home/lib/dialog/AlertController$ButtonInfo;->mStyle:I

    return p0
.end method
