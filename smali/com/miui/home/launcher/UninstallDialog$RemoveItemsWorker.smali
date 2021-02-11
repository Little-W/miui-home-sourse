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

    .line 270
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 274
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mIsWorking:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/UninstallDialog;Lcom/miui/home/launcher/UninstallDialog$1;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    return-void
.end method


# virtual methods
.method public failedRemoveCurrent()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    iget v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove([Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 280
    iput v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    .line 281
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mIsWorking:Z

    .line 283
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 284
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/UninstallDialog;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 7

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    iget v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/miui/home/launcher/UninstallDialog;->access$100(Lcom/miui/home/launcher/UninstallDialog;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->failedRemoveCurrent()V

    .line 296
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    .line 297
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v3, v2

    if-ne v0, v3, :cond_9

    .line 298
    array-length v0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, v2, v4

    .line 299
    iget-object v6, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 300
    iget-object v6, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v6}, Lcom/miui/home/launcher/UninstallDialog;->access$200(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/Launcher;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v6, v5}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 303
    :cond_2
    :goto_1
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->failedRemoveCurrent()V

    .line 303
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mCounter:I

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 307
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 308
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/View;

    .line 309
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    iget-object v5, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/view/View;

    invoke-static {v4, v5}, Lcom/miui/home/launcher/UninstallDialog;->access$300(Lcom/miui/home/launcher/UninstallDialog;[Landroid/view/View;)V

    .line 310
    array-length v4, v2

    if-ne v4, v1, :cond_4

    .line 311
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$400(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100263

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aget-object v2, v2, v3

    .line 312
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v4}, Lcom/miui/home/launcher/UninstallDialog;->access$500(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    .line 311
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 313
    :cond_4
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e0006

    array-length v5, v2

    new-array v1, v1, [Ljava/lang/Object;

    array-length v2, v2

    .line 316
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 315
    invoke-virtual {v0, v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 319
    :cond_5
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v4, v2

    if-ne v4, v1, :cond_6

    .line 320
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$600(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 321
    :cond_6
    array-length v2, v2

    if-le v2, v1, :cond_7

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$700(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0007

    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    array-length v5, v4

    new-array v1, v1, [Ljava/lang/Object;

    array-length v4, v4

    .line 324
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 323
    invoke-virtual {v0, v2, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_7
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 328
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mFailedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->mItems:[Landroid/view/View;

    goto :goto_3

    .line 333
    :cond_9
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/UninstallDialog;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-void
.end method
