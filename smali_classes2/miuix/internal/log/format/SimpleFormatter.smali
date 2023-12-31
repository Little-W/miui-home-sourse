.class public Lmiuix/internal/log/format/SimpleFormatter;
.super Ljava/lang/Object;
.source "SimpleFormatter.java"

# interfaces
.implements Lmiuix/internal/log/format/Formatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;,
        Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;,
        Lmiuix/internal/log/format/SimpleFormatter$StringBuilderWriter;
    }
.end annotation


# instance fields
.field private mThreadCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lmiuix/internal/log/format/SimpleFormatter$1;

    invoke-direct {v0, p0}, Lmiuix/internal/log/format/SimpleFormatter$1;-><init>(Lmiuix/internal/log/format/SimpleFormatter;)V

    iput-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter;->mThreadCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private doFormat(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Lmiuix/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 35
    iget-object p0, p0, Lmiuix/internal/log/format/SimpleFormatter;->mThreadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;

    .line 36
    iget-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;->out:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 39
    iget-object v1, p0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;->dateFormat:Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;

    invoke-virtual {v1, v0, p3, p4}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->format(Ljava/lang/StringBuilder;J)V

    const-string p3, " - "

    .line 42
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x5b

    .line 43
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lmiuix/internal/log/Level;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "::"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_0

    .line 49
    invoke-interface {p7, v0}, Lmiuix/internal/log/message/Message;->format(Ljava/lang/Appendable;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p1, 0xa

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_1

    .line 56
    iget-object p0, p0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;->printer:Ljava/io/PrintWriter;

    invoke-virtual {p8, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 p1, 0x2000

    if-le p0, p1, :cond_2

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public format(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    .line 25
    invoke-direct/range {v0 .. v8}, Lmiuix/internal/log/format/SimpleFormatter;->doFormat(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Lmiuix/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Lmiuix/internal/log/message/Message;)Ljava/lang/String;
    .locals 9

    .line 30
    invoke-interface {p6}, Lmiuix/internal/log/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lmiuix/internal/log/format/SimpleFormatter;->doFormat(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Lmiuix/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
