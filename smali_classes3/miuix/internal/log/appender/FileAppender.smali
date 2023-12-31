.class public Lmiuix/internal/log/appender/FileAppender;
.super Ljava/lang/Object;
.source "FileAppender.java"

# interfaces
.implements Lmiuix/internal/log/appender/Appender;


# instance fields
.field private mFileManager:Lmiuix/internal/log/appender/FileManager;

.field private mFormatter:Lmiuix/internal/log/format/Formatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doAppend(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V
    .locals 9

    move-object v0, p0

    .line 53
    iget-object v1, v0, Lmiuix/internal/log/appender/FileAppender;->mFormatter:Lmiuix/internal/log/format/Formatter;

    const-string v2, "FileAppender"

    if-nez v1, :cond_0

    const-string v0, "Fail to append log for formatter is null"

    .line 54
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 57
    :cond_0
    iget-object v8, v0, Lmiuix/internal/log/appender/FileAppender;->mFileManager:Lmiuix/internal/log/appender/FileManager;

    if-nez v8, :cond_1

    const-string v0, "Fail to append log for FileManager is null"

    .line 58
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p6, :cond_2

    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p8

    .line 62
    invoke-interface/range {v0 .. v6}, Lmiuix/internal/log/format/Formatter;->format(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Lmiuix/internal/log/message/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lmiuix/internal/log/appender/FileManager;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 64
    invoke-interface/range {v0 .. v7}, Lmiuix/internal/log/format/Formatter;->format(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lmiuix/internal/log/appender/FileManager;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 44
    invoke-direct/range {v0 .. v8}, Lmiuix/internal/log/appender/FileAppender;->doAppend(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V

    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Lmiuix/internal/log/message/Message;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v8, p6

    .line 49
    invoke-direct/range {v0 .. v8}, Lmiuix/internal/log/appender/FileAppender;->doAppend(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 70
    iget-object v0, p0, Lmiuix/internal/log/appender/FileAppender;->mFileManager:Lmiuix/internal/log/appender/FileManager;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lmiuix/internal/log/appender/FileManager;->close()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lmiuix/internal/log/appender/FileAppender;->mFileManager:Lmiuix/internal/log/appender/FileManager;

    :cond_0
    return-void
.end method

.method public setFileManager(Lmiuix/internal/log/appender/FileManager;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lmiuix/internal/log/appender/FileAppender;->mFileManager:Lmiuix/internal/log/appender/FileManager;

    if-ne v0, p1, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lmiuix/internal/log/appender/FileAppender;->close()V

    .line 35
    iput-object p1, p0, Lmiuix/internal/log/appender/FileAppender;->mFileManager:Lmiuix/internal/log/appender/FileManager;

    return-void
.end method

.method public setFormatter(Lmiuix/internal/log/format/Formatter;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmiuix/internal/log/appender/FileAppender;->mFormatter:Lmiuix/internal/log/format/Formatter;

    return-void
.end method
