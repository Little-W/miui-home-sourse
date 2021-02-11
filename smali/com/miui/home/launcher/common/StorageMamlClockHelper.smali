.class public Lcom/miui/home/launcher/common/StorageMamlClockHelper;
.super Ljava/lang/Object;
.source "StorageMamlClockHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/StorageMamlClockHelper$ParentResource;,
        Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;
    }
.end annotation


# static fields
.field private static sTag2Id:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->sTag2Id:Ljava/util/Map;

    .line 47
    sget-object v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->sTag2Id:Ljava/util/Map;

    const-string v1, "title"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->sTag2Id:Ljava/util/Map;

    const-string v1, "titles"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->sTag2Id:Ljava/util/Map;

    const-string v1, "localId"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->sTag2Id:Ljava/util/Map;

    const-string v1, "parentResources"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getId(Ljava/lang/String;)I
    .locals 1

    .line 162
    sget-object v0, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->sTag2Id:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getStorageClocks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/MIUI/theme/.data/meta/clock_2x4/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 83
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 84
    invoke-static {v4}, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->readClock(Ljava/io/File;)Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 86
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static readClock(Ljava/io/File;)Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;
    .locals 5

    const/4 v0, 0x0

    .line 97
    :try_start_0
    new-instance v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;-><init>()V

    .line 98
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 101
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-virtual {v2}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v4, :cond_1

    .line 103
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->getId(Ljava/lang/String;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 125
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 114
    :pswitch_0
    invoke-static {v2}, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->readParentResource(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 116
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$ParentResource;

    iget-object p0, p0, Lcom/miui/home/launcher/common/StorageMamlClockHelper$ParentResource;->localId:Ljava/lang/String;

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/MIUI/theme/.data/preview/theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "preview_clock_2x4_0.png"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->previewPath:Ljava/lang/String;

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/MIUI/theme/.data/content/clock_2x4/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mrc"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->contentPath:Ljava/lang/String;

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-static {v2}, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->readMap(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->access$102(Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_0

    .line 108
    :pswitch_3
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->access$002(Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    :cond_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    .line 129
    iget-object p0, v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->contentPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/io/File;

    iget-object v3, v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->contentPath:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->previewPath:Ljava/lang/String;

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/io/File;

    iget-object v3, v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;->previewPath:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    .line 137
    :try_start_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v1

    .line 137
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    :cond_4
    :goto_3
    throw p0

    :catch_2
    move-object v2, v0

    :catch_3
    if-eqz v2, :cond_5

    .line 137
    :try_start_5
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readMap(Landroid/util/JsonReader;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 149
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private static readParentResource(Landroid/util/JsonReader;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/common/StorageMamlClockHelper$ParentResource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 173
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 175
    new-instance v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$ParentResource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/StorageMamlClockHelper$ParentResource;-><init>(Lcom/miui/home/launcher/common/StorageMamlClockHelper$1;)V

    .line 176
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v4, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 182
    :cond_0
    invoke-static {v2}, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->getId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$ParentResource;->localId:Ljava/lang/String;

    goto :goto_1

    .line 190
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-object v0
.end method
