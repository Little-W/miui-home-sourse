.class public final synthetic Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

.field private final synthetic f$1:[Ljava/lang/String;

.field private final synthetic f$2:[Ljava/lang/String;

.field private final synthetic f$3:[I

.field private final synthetic f$4:[Ljava/lang/String;

.field private final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$3:[I

    iput-object p5, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$4:[Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$3:[I

    iget-object v4, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$4:[Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->lambda$handleProgressUpdate$399(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
