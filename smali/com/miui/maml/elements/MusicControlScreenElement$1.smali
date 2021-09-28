.class Lcom/miui/maml/elements/MusicControlScreenElement$1;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mClientChanged:Z

.field final synthetic this$0:Lcom/miui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange()V
    .locals 3

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    .line 344
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$800(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 345
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->readPackageName()V

    const-string v0, "MusicControlScreenE"

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "null"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/MediaMetadata;)V
    .locals 10

    .line 278
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1002(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 279
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 286
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object v0

    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object v1

    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicControlScreenE"

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ntitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", artist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", album: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    .line 290
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v3}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 291
    iget-object v4, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v4, p1, v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1200(Lcom/miui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v0, "android.media.metadata.ART"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "MusicControlScreenE"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artwork: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    const-string v4, "null"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_5

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v0

    :goto_4
    if-eqz v1, :cond_7

    if-nez p1, :cond_6

    .line 301
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    const-wide/16 v4, 0x1f4

    invoke-static {p1, v4, v5}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1300(Lcom/miui/maml/elements/MusicControlScreenElement;J)V

    goto :goto_5

    .line 303
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1400(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V

    .line 307
    :cond_7
    :goto_5
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v1, "android.media.metadata.LYRIC"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MusicControlScreenE"

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw lyric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {p1}, Lcom/miui/maml/elements/MusicLyricParser;->parseLyric(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 311
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->decorate()V

    :cond_8
    if-nez p1, :cond_a

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    move v1, v2

    goto :goto_7

    :cond_a
    :goto_6
    move v1, v0

    :goto_7
    if-eqz v1, :cond_b

    .line 315
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1502(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 316
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1600(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 318
    :cond_b
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v1

    if-eqz v1, :cond_c

    const/high16 v1, 0x41f00000    # 30.0f

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 320
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 321
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    move-result-wide v6

    const-string p1, "MusicControlScreenE"

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "duration: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", position: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long p1, v4, v8

    if-ltz p1, :cond_d

    cmp-long p1, v6, v8

    if-gez p1, :cond_f

    :cond_d
    if-eqz v3, :cond_e

    goto :goto_9

    :cond_e
    move v0, v2

    :cond_f
    :goto_9
    if-eqz v0, :cond_10

    .line 325
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1, v4, v5, v6, v7}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1800(Lcom/miui/maml/elements/MusicControlScreenElement;JJ)V

    .line 328
    :cond_10
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v0, "android.media.metadata.USER_RATING"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object p1

    const-string v0, "MusicControlScreenE"

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1900(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V

    .line 334
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    if-nez p1, :cond_11

    .line 335
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicControlScreenElement$1;->onClientChange()V

    :cond_11
    return-void
.end method

.method public onClientPlaybackActionUpdate(J)V
    .locals 8

    const-string v0, "MusicControlScreenE"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transportControlFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$100(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    cmp-long v5, p1, v2

    if-eqz v5, :cond_2

    const-wide/16 v6, 0x207

    and-long/2addr v6, p1

    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-static {v0, v6}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$202(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 232
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    if-eqz v5, :cond_3

    const-wide/16 v6, 0x10

    and-long/2addr v6, p1

    cmp-long v6, v6, v2

    if-nez v6, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    invoke-static {v0, v6}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$302(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 234
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    if-eqz v5, :cond_4

    const-wide/16 v5, 0x20

    and-long/2addr p1, v5

    cmp-long p1, p1, v2

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    invoke-static {v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$402(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 236
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    iget-boolean p1, p1, Lcom/miui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz p1, :cond_8

    .line 237
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    move-result p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_5

    move-wide v4, v0

    goto :goto_4

    :cond_5
    move-wide v4, v2

    :goto_4
    invoke-virtual {p1, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 238
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$300(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    move-result p2

    if-eqz p2, :cond_6

    move-wide v4, v0

    goto :goto_5

    :cond_6
    move-wide v4, v2

    :goto_5
    invoke-virtual {p1, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 239
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_6

    :cond_7
    move-wide v0, v2

    :goto_6
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_8
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 3

    .line 245
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement$1;->onStateUpdate(I)V

    const-string v0, "MusicControlScreenE"

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->show(Z)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;Z)V

    return-void
.end method

.method protected onStateUpdate(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 262
    :pswitch_0
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    const-string v1, "state_play"

    invoke-virtual {p1, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->performAction(Ljava/lang/String;)V

    move v1, v0

    goto :goto_1

    .line 257
    :pswitch_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    const-string v2, "state_stop"

    invoke-virtual {p1, v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->performAction(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :pswitch_2
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$800(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;Z)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
