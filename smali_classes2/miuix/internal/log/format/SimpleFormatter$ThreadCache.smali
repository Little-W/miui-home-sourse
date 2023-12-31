.class Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;
.super Ljava/lang/Object;
.source "SimpleFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/log/format/SimpleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadCache"
.end annotation


# instance fields
.field dateFormat:Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;

.field out:Ljava/lang/StringBuilder;

.field printer:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;-><init>(Lmiuix/internal/log/format/SimpleFormatter$1;)V

    iput-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;->dateFormat:Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;->out:Ljava/lang/StringBuilder;

    .line 108
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Lmiuix/internal/log/format/SimpleFormatter$StringBuilderWriter;

    iget-object v2, p0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;->out:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lmiuix/internal/log/format/SimpleFormatter$StringBuilderWriter;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;->printer:Ljava/io/PrintWriter;

    return-void
.end method
