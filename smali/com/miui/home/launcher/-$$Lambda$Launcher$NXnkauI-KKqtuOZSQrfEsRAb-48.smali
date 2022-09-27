.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$NXnkauI-KKqtuOZSQrfEsRAb-48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$NXnkauI-KKqtuOZSQrfEsRAb-48;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$NXnkauI-KKqtuOZSQrfEsRAb-48;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$bindMamlWidgetUpdate$44(Ljava/lang/String;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result p1

    return p1
.end method
