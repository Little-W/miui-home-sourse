.class public abstract Lmiuix/os/AsyncTaskWithProgress;
.super Landroid/os/AsyncTask;
.source "AsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;,
        Lmiuix/os/AsyncTaskWithProgress$Listeners;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;",
        "Ljava/lang/Integer;",
        "TResult;>;"
    }
.end annotation


# static fields
.field private static final sAllTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCancelable:Z

.field private mCurrentProgress:I

.field private volatile mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

.field private mIndeterminate:Z

.field private final mListeners:Lmiuix/os/AsyncTaskWithProgress$Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>.",
            "Listeners;"
        }
    .end annotation
.end field

.field private mMaxProgress:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageId:I

.field private mProgressStyle:I

.field private mTheme:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    .line 49
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mProgressStyle:I

    return p0
.end method

.method static synthetic access$102(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    .line 49
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p1
.end method

.method static synthetic access$1100(Lmiuix/os/AsyncTaskWithProgress;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mIndeterminate:Z

    return p0
.end method

.method static synthetic access$1200(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMaxProgress:I

    return p0
.end method

.method static synthetic access$1300(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    return p0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 49
    sget-object v0, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lmiuix/os/AsyncTaskWithProgress;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    return p0
.end method

.method static synthetic access$400(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$Listeners;
    .locals 0

    .line 49
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mListeners:Lmiuix/os/AsyncTaskWithProgress$Listeners;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTheme:I

    return p0
.end method

.method static synthetic access$600(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitleId:I

    return p0
.end method

.method static synthetic access$700(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    .line 49
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    return p0
.end method

.method static synthetic access$900(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    .line 49
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method
