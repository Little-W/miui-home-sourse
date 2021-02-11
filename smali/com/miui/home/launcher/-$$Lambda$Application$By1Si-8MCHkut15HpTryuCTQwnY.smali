.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Application$By1Si-8MCHkut15HpTryuCTQwnY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/elvishew/xlog/flattener/Flattener2;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Application;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Application$By1Si-8MCHkut15HpTryuCTQwnY;->f$0:Lcom/miui/home/launcher/Application;

    return-void
.end method


# virtual methods
.method public final flatten(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Application$By1Si-8MCHkut15HpTryuCTQwnY;->f$0:Lcom/miui/home/launcher/Application;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/Application;->lambda$initXlog$0(Lcom/miui/home/launcher/Application;JILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
