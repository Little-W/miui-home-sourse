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

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$600(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$000(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->setTag(Ljava/lang/Object;)V

    .line 257
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->hideTransferIfNeed()V

    return-void
.end method

.method public static synthetic lambda$PdF6K9IZx3lPuIvQlJsv7kTxs7U(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->clearTransferData()V

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

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$700(Lcom/miui/home/launcher/SearchBarTransferLayout;)V

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$000(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    new-instance v1, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;Lcom/miui/home/launcher/SearchBarTransferLayout$Data;Lcom/miui/home/launcher/SearchBarTransferLayout$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->setTag(Ljava/lang/Object;)V

    .line 249
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->showTransferIfNeed()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$0$SearchBarTransferLayout$TransferObserver(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V
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

.method public onChange(Z)V
    .locals 14

    const-string p1, "Launcher.Transfer"

    const/4 v0, 0x0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$300(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$200()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 200
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "title"

    .line 201
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "icon"

    .line 202
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent"

    .line 203
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type"

    .line 204
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v4, "show_time"

    .line 205
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v4, "text_show_time"

    .line 206
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v4, "action"

    .line 207
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v4, "data_id"

    .line 208
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "title:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iconUri:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intentUri:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showTime:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "textShowTime:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data_id:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 219
    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 220
    iget-object v4, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v4}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$400(Lcom/miui/home/launcher/SearchBarTransferLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v7, :cond_1

    .line 222
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 224
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v2

    new-instance v13, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$O0oJNP8-UJawB7BHQePMWLeLHl8;

    move-object v3, v13

    move-object v4, p0

    invoke-direct/range {v3 .. v12}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$O0oJNP8-UJawB7BHQePMWLeLHl8;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    invoke-virtual {v2, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v2, "set success"

    .line 225
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 228
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v2, "missing meta"

    .line 229
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v2, "cursor null"

    .line 234
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_4

    .line 236
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 199
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 237
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$PdF6K9IZx3lPuIvQlJsv7kTxs7U;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "query error"

    .line 239
    invoke-static {p1, p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-void
.end method
