.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$52$futi_Vdvi-GOlnOAsKD9MdhVqII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher$52;

.field private final synthetic f$1:Lcom/miui/home/launcher/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher$52;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$52$futi_Vdvi-GOlnOAsKD9MdhVqII;->f$0:Lcom/miui/home/launcher/Launcher$52;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$52$futi_Vdvi-GOlnOAsKD9MdhVqII;->f$1:Lcom/miui/home/launcher/FolderInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$52$futi_Vdvi-GOlnOAsKD9MdhVqII;->f$0:Lcom/miui/home/launcher/Launcher$52;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$52$futi_Vdvi-GOlnOAsKD9MdhVqII;->f$1:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher$52;->lambda$run$0$Launcher$52(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
