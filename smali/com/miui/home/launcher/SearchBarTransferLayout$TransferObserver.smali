.class Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;
.super Landroid/database/ContentObserver;
.source "SearchBarTransferLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarTransferLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SearchBarTransferLayout;Landroid/os/Handler;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    .line 194
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private clearTransferData()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$600(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$000(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->setTag(Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->hideTransferIfNeed()V

    return-void
.end method

.method public static synthetic lambda$PdF6K9IZx3lPuIvQlJsv7kTxs7U(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->clearTransferData()V

    return-void
.end method

.method public static synthetic lambda$onChange$316(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V
    .locals 10

    .line 224
    new-instance v9, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    move-object v0, p0

    invoke-direct {p0, v9}, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->setTransferData(Lcom/miui/home/launcher/SearchBarTransferLayout$Data;)V

    return-void
.end method

.method private setTransferData(Lcom/miui/home/launcher/SearchBarTransferLayout$Data;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$600(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$000(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    new-instance v1, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;Lcom/miui/home/launcher/SearchBarTransferLayout$Data;Lcom/miui/home/launcher/SearchBarTransferLayout$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->setTag(Ljava/lang/Object;)V

    .line 248
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->showTransferIfNeed()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 14

    const/4 p1, 0x0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$300(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$200()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_2

    .line 200
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "title"

    .line 201
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "icon"

    .line 202
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    .line 203
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    .line 204
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v3, "show_time"

    .line 205
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "text_show_time"

    .line 206
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v3, "action"

    .line 207
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "data_id"

    .line 208
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "Launcher.Transfer"

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Launcher.Transfer"

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iconUri:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Launcher.Transfer"

    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intentUri:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Launcher.Transfer"

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Launcher.Transfer"

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showTime:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Launcher.Transfer"

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "textShowTime:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Launcher.Transfer"

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Launcher.Transfer"

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data_id:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 219
    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 220
    iget-object v3, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v3}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$400(Lcom/miui/home/launcher/SearchBarTransferLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v6, :cond_1

    .line 222
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v8, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 224
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v1

    new-instance v12, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$TLJRglRoeqe0ZV2zVE345QC3ZBs;

    move-object v2, v12

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$TLJRglRoeqe0ZV2zVE345QC3ZBs;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    invoke-virtual {v1, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "Launcher.Transfer"

    const-string v2, "set success"

    .line 225
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 228
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "Launcher.Transfer"

    const-string v2, "missing meta"

    .line 229
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "Launcher.Transfer"

    const-string v2, "cursor null"

    .line 234
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_5

    .line 236
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 199
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    .line 236
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    .line 237
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 238
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "Launcher.Transfer"

    const-string v1, "query error"

    .line 239
    invoke-static {p1, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    return-void
.end method
