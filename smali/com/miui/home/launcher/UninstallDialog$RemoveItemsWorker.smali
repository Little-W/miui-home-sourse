.class Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;
.super Ljava/lang/Object;
.source "UninstallDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/UninstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveItemsWorker"
.end annotation


# instance fields
.field private mCancelUninstallShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCounter:I

.field mFailedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWorking:Z

.field private mItems:[Landroid/view/View;

.field final synthetic this$0:Lcom/miui/home/launcher/UninstallDialog;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/UninstallDialog;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 305
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mIsWorking:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/UninstallDialog;Lcom/miui/home/launcher/UninstallDialog$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;)V
    .locals 6

    const-string v0, ""

    .line 345
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    .line 347
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    iget-object v5, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/view/View;

    invoke-static {v4, v5}, Lcom/miui/home/launcher/UninstallDialog;->access$300(Lcom/miui/home/launcher/UninstallDialog;[Landroid/view/View;)V

    .line 348
    array-length v4, v1

    if-ne v4, v3, :cond_0

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$400(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1104ba

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v1, v1, v2

    .line 350
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v4}, Lcom/miui/home/launcher/UninstallDialog;->access$500(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v2

    .line 349
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_0
    array-length v4, v1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0f0019

    array-length v5, v1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v1, v1

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 353
    invoke-virtual {v0, v4, v5, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v4, v1

    if-ne v4, v3, :cond_2

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$600(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1104bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_2
    array-length v1, v1

    if-le v1, v3, :cond_3

    .line 360
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$700(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001a

    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v5, v4

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v4

    .line 362
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 361
    invoke-virtual {v0, v1, v5, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 366
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public failedRemoveCurrent()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    iget v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove([Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    .line 314
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    const/4 p1, 0x1

    .line 315
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mIsWorking:Z

    .line 316
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 317
    invoke-static {p0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    .line 318
    iput-object p2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCancelUninstallShortcuts:Ljava/util/List;

    return-void
.end method

.method public run()V
    .locals 5

    .line 327
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 328
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCancelUninstallShortcuts:Ljava/util/List;

    if-eqz v2, :cond_0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    iget v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    aget-object v1, v1, v2

    .line 329
    invoke-static {v0, v1}, Lcom/miui/home/launcher/UninstallDialog;->access$100(Lcom/miui/home/launcher/UninstallDialog;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->failedRemoveCurrent()V

    .line 332
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    goto :goto_0

    .line 334
    :cond_3
    array-length v2, v1

    if-ne v0, v2, :cond_7

    .line 335
    array-length v0, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v3, v1, v2

    .line 336
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 337
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v4}, Lcom/miui/home/launcher/UninstallDialog;->access$200(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 340
    :cond_5
    :goto_2
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 341
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->failedRemoveCurrent()V

    .line 340
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    goto :goto_2

    .line 343
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$UninstallDialog$RemoveItemsWorker$2qCiDkHkQ1cyWkU9LLGIbNcwq6Y;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$UninstallDialog$RemoveItemsWorker$2qCiDkHkQ1cyWkU9LLGIbNcwq6Y;-><init>(Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/UninstallDialog;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method
